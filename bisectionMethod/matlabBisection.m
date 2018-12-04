clear all;clc;

xm=0;
onek='@(x)';
fonks=input("Fonksiyonu girin:",'s');
fonksiyon=strcat(onek,fonks);
f=str2func(fonksiyon);
xl = input("xl degeri:");
xr = input("xr degeri:");
km = 0;
n=0;
kn = input("Maks deneme sayisi:");
td = input("TD degeri:");
while (1==1)
    if (n>=kn)
        km=-1;
        break
    end
    
    yl = f(xl);
    yr = f(xr);

    if ((yl*yr)<0)
        xm = (xl + xr)/2;
        km = 1;
    else
        km = 0;
        break
    end

    ym = f(xm);

    if (sqrt(ym^2)<=td)
        km = 1;
        break
    end

    if ((yl*ym)<0)
        xr=xm;
        yr=ym;
    else
        xl=xm;
        yl=ym;
    end
    n = n + 1;
end

if (km == 1)
    fprintf("Bulunan kok:%.4f\n", xm);
elseif (km == 0)
    fprintf("Kok bulunamadi\n");
else
    fprintf("Maks deneme sayisinda istenilen kok bulunamadi\n");
    fprintf("Hesaplanan son kok degeri:%.4f\n", xm);
end

