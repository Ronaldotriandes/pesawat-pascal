{file : Tubes}
{desc : Aplikasi pembelian tiket pesawat online}
{date : 4 april 2016}
program tubes;
uses crt;
type mahasiswa = record nama, nim , kelas: string;
               end;
type harg    = record mask,asaa,tuj,tan,kode : string;
               har: longint;
               end;
type reportt = record mask,asaa,tuj,nama,alamat,tan,kode: string;
                har: longint;
               end;
type pemesan = record nama, alamat, id,ps : string ;
                end;
var
        mhs: array [1..100] of mahasiswa;
        ida,psa,usa,psda,uid,ups: string;
        j,co,coi,i,z,r,y,u,coba,jad,a,b,wer,bc,xx : integer;
        procedure muser; forward;
        procedure madmin; forward;
        procedure welcome; forward;
        procedure mlogin; forward;
        procedure mreg; forward;
procedure welcome;
begin
        clrscr;
        gotoxy(17,2);writeln(' APLIKASI PEMESANAN TIKET PESAWAT ONLINE');
        gotoxy(2,3);writeln(' ============================================================================') ;
        gotoxy(33,5);writeln('1.Register');
        gotoxy(33,6);writeln('2.Login');
        gotoxy(33,7);writeln('3.EXIT');
        gotoxy(30,8);writeln('=====JAWAB======');
        gotoxy(4,14); writeln('     Silahkan LOGIN terlebih dahulu. jika anda belum mempunya akun');
        gotoxy(4,15); writeln('                     silahkan pilih menu REGISTER');
        gotoxy(36,9);readln(j);

        case j of
        1: mreg   ;
        2: mlogin;
        3: exit;
        end;
end;
procedure ap;
begin
        co:=co;
        coi:=3;
        while coi<10 do
        begin
                co:=co+1;
                coi:=10;
        end;
end;
procedure mreg;
var
        th,cek,hm: integer;
begin
        clrscr;
        i:=co;
        repeat
        begin
                r:=r+1;
                hm:= r;
                gotoxy(31,5);write('nama               =');
                gotoxy(31,6); write('Masukan Nama =');
                gotoxy(31,7);write('Alamat       =');
                gotoxy(31,8);write('Password     =');
                gotoxy(46,5);readln(mhs[r].nama);
                cek:=1;
                repeat
                begin
                       if (r>cek) And (mhs[r].nama=mhs[r-cek].nama) then
                       begin
                        gotoxy(10,3); writeln('ID yang anda masukan sudah ada, silahkan coba lagi');
                        delay(1000);
                        mreg;
                       end
                       else
                        cek:=cek+1;
                end;
                until (cek>r);
                hm:=hm;
                gotoxy(46,6);readln(mhs[hm].nama);
                gotoxy(46,7);readln(mhs[hm].nim);
                gotoxy(46,8);readln(mhs[hm].kelas);
                i:=11;

        end;
        until (i>10);
        th:=th+1;

        clrscr;
        gotoxy(17,2);writeln(' APLIKASI PEMESANAN TIKET PESAWAT ONLINE');
        gotoxy(2,3);writeln(' ============================================================================') ;
        writeln;
        gotoxy(26,5); writeln('Terima kasih telah registrasi');
        gotoxy(33,6);writeln('1.Register');
        gotoxy(33,7);writeln('2.Login');
        gotoxy(33,8);writeln('3.EXIT');
        gotoxy(30,9);writeln('=====JAWAB======');
        gotoxy(36,10);readln(z);

        case z of
        1: mreg   ;
        2: mlogin;
        3: exit;
        end;
end;
procedure mlogin;
begin
        clrscr;
        gotoxy(17,2);writeln(' APLIKASI PEMESANAN TIKET PESAWAT ONLINE');
        gotoxy(2,3);writeln(' ============================================================================') ;
        writeln;
        gotoxy(33,5);writeln('1. admin');
        gotoxy(33,6);writeln('2. User');
        gotoxy(33,7); writeln('3. Kembali');
        gotoxy(33,8);writeln('4. Exit');
        gotoxy(30,10);writeln('======JAWAB=====');
        gotoxy(35,11);readln(y);
        case y of
        1:madmin;
        2: muser;
        3: welcome;
        4: exit;
        end;
end;
procedure madmin;
begin
        ida:='ronal';
        psa:='apaya';
        clrscr;
        gotoxy(31,5); writeln('Username :');
        gotoxy(31,6); writeln('Password :');
        gotoxy(42,5); readln(usa);
        gotoxy(42,6); readln(psda);
        if (usa=ida) and (psda=psa) then
                begin
                    clrscr;
                    gotoxy(3,3);writeln('SELAMAT DATANG ADMIN GANTENG');
                    gotoxy(3,4);WRITELN;
                    gotoxy(3,5);writeln;
                     end
        else
                clrscr;
                writeln('PASSWORD YANG ANDA MASUKAN SALAH');
                writeln('==================================');
                writeln('1. coba login');
                writeln('2. user');
                writeln('3. exit');
                readln(coba);
                case coba of
                1: madmin;
                2: muser;
                3: exit;
                end;


end;



procedure menu;
begin
            gotoxy(4,7);writeln('----------');
        gotoxy(5,8);writeln('  MENU');
        gotoxy(4,9);writeln('----------');
        gotoxy(4,10);writeln;
        gotoxy(4,11);writeln('1. Lihat Semua');
        gotoxy(4,12);writeln('2. Cari tiket');
        gotoxy(4,13);writeln('3. Pilih');
        gotoxy(4,14); writeln('4. Logout');
        gotoxy(4,15);writeln('=================');
        gotoxy(9,16);readln(bc);
        case bc of
        //1: data;
        //2: search;
        //3: pilih;
        4: mlogin;
        end;
end;
procedure muser;
var
        bm :integer;
begin
        clrscr;
       gotoxy(3,2);Writeln('Username :'); gotoxy(13,2);readln(uid);
        gotoxy(3,3);writeln('Password :'); gotoxy(13,3);readln(ups);

        xx:=1;
        while xx<20 do
        begin

                 if (uid =mhs[xx].nama) then
                 begin
                    if (ups=mhs[xx].) then
                       begin
                          fix1:=mhs[xx].nama;
                          fix2:=mhs[xx].alamat;
                          gotoxy(3,4); write('Sedang Memuat');
                          for bm:=1 to 6 do
                          begin
                                write('.');
                                delay(500);
                                gotoxy(16+bm,4);
                          end;
                          writeln;
                          clrscr;
                          tabel;
                          gotoxy(3,3);writeln('Selamat Datang ' ,pms[xx].nama);
                          writeln;
                          delay(1000);

                          menu;
                          xx:=21;
                       end
                    else
                        salah  ;
                 end
                 else
                        xx:=xx+1;

        end;
end;
procedure data;
begin
         clrscr;
         tabel1;
         short;

         for xx:=1 to wer do
          begin

                gotoxy(3,6+xx-1); writeln(xx); gotoxy(5,6+xx-1);writeln('|');
                gotoxy(8,6+xx-1); writeln(psw[xx].maskapai); gotoxy(19,6+xx-1); writeln('|');
                gotoxy(21,6+xx-1); writeln(psw[xx].asal); gotoxy(29,6+xx-1); writeln('|');
                gotoxy(31,6+xx-1); writeln(psw[xx].tujuan); gotoxy(41,6+xx-1); writeln('|');
                gotoxy(43,6+xx-1); writeln(psw[xx].Tanggal); gotoxy(55,6+xx-1); writeln('|');
                gotoxy(57,6+xx-1); writeln(psw[xx].harga); gotoxy(67,6+xx-1); writeln('|');
                gotoxy(70,6+xx-1); writeln(psw[xx].kode); gotoxy(78,6+xx-1); writeln('|');
         end;
         if xx=d then
                writeln(' |============================================================================|');
         readln;
        gotoxy(4,30);writeln('1. Lihat Semua');
        gotoxy(4,31);writeln('2. Cari tiket');
        gotoxy(4,32);writeln('3. Pilih');
        gotoxy(4,33);writeln('=================');
        gotoxy(9,34);readln(rt);
        case rt of
        1: data;
        2: search;
        3: pilih;
        4: mlogin;
        end;
end;
Procedure short;
var
         maxx,qq,ww: integer;
         tmpt: pesawat;
begin

        for qq:=1 to b-1 do
        begin
          maxx:=qq;
          for ww:= qq+1 to b do
                if psw[ww].harga< psw[maxx].harga then
                        maxx:=ww;
                        tmpt:=psw[maxx];
                        psw[maxx]:= psw[qq];
                        psw[qq]:= tmpt;
          end;

end;
procedure salah;
begin
          clrscr;
          writeln('PASSWORD YANG ANDA MASUKAN SALAH');
           writeln('==================================');
           delay(1000);
           xx:=xx+1;
           clrscr;
           writeln('1. login lagi');
           writeln('2. belum register');
           writeln('3. exit');
           writeln('=======================');
            readln(lagi);
            case lagi of
            1: muser;
            2: mreg;
            3: exit;
            end;
end;
procedure search;
begin
        clrscr;
        gotoxy(2,1);writeln('Masukan Tanggal, Asal dan tujuan');
        gotoxy(2,2);writeln('*DD/BB/TT');
        gotoxy(2,3); writeln('Tanggal  :');
        gotoxy(2,4); writeln('Asal     :');
        gotoxy(2,5); writeln('Tujuan   :');
        gotoxy(13,3);readln(ddd);
        gotoxy(13,4);readln(asa);
        gotoxy(13,5);readln(tuj);
        tabel1;
        uj:=0;
           for tt:=1 to wer do
             begin
                if  (ddd=psw[tt].tanggal) and (asa=psw[tt].asal) and (tuj=psw[tt].tujuan) then
                           begin
                                 uj:=uj+1;
                                 gotoxy(3,6+uj-1); writeln(uj); gotoxy(5,6+uj-1);writeln('|');
                                 gotoxy(8,6+uj-1); writeln(psw[tt].maskapai); gotoxy(19,6+uj-1); writeln('|');
                                 hrg[uj].mask:= psw[tt].maskapai;
                                 gotoxy(21,6+uj-1); writeln(psw[tt].asal); gotoxy(29,+6+uj-1); writeln('|');
                                 hrg[uj].asaa:= psw[tt].asal;
                                 gotoxy(31,6+uj-1); writeln(psw[tt].tujuan); gotoxy(41,6+uj-1); writeln('|');
                                 hrg[uj].tuj:=psw[tt].tujuan;
                                 gotoxy(44,6+uj-1); writeln(psw[tt].Tanggal); gotoxy(55,6+uj-1); writeln('|');
                                 hrg[uj].tan:= psw[tt].tanggal;
                                 gotoxy(57,6+uj-1); writeln(psw[tt].harga); gotoxy(67,6+uj-1); writeln('|');
                                 hrg[uj].har:= psw[tt].harga;
                                 gotoxy(70,6+uj-1); writeln(psw[tt].kode); gotoxy(78,6+uj-1); writeln('|');
                                 hrg[uj].kode:=psw[tt].kode;
                            end;
             end;
        if uj=0 then
        begin
                clrscr;
                writeln('DATA TIDAK DITEMUKAN, SILAHKAN COBA LAGI');
        end
        else
                writeln('|=============================================================================|');
        readln;
        gotoxy(4,30);writeln('1. Lihat Semua');
        gotoxy(4,31);writeln('2. Cari tiket');
        gotoxy(4,32);writeln('3. Pilih');
        gotoxy(4,33);writeln('=================');
        gotoxy(9,34);readln(ty);
        case ty of
        1: data;
        2: search;
        3: pilih;
        4: mlogin;
        end;
end;
procedure pilih;
var
        plh : integer;
begin
        gotoxy(25,30); writeln('Pilih Nomor Berapa : ');
        gotoxy(45,31);readln(plh);
        clrscr;
        tabel1;
        net:=net;
        oke:=oke;
        repeat
        begin
                net:=net+1;
                gotoxy(3,6); writeln(net); gotoxy(5,6); writeln('|');
                gotoxy(8,6); writeln(hrg[plh].mask); gotoxy(19,6); writeln('|');
                rep[net].mask:=hrg[plh].mask;
                gotoxy(21,6); writeln(hrg[plh].asaa); gotoxy(29,6); writeln('|');
                rep[net].asaa:=hrg[plh].asaa;
                gotoxy(31,6); writeln(hrg[plh].tuj); gotoxy(41,6); writeln('|');
                rep[net].tuj:=hrg[plh].tuj;
                gotoxy(44,6); writeln(hrg[plh].tan); gotoxy(55,6); writeln('|');
                rep[net].tan:=hrg[plh].tan;
                gotoxy(57,6); writeln(hrg[plh].har);   gotoxy(67,6); writeln('|');
                rep[net].har:=hrg[plh].har;
                gotoxy(70,6); writeln(psw[xx].kode); gotoxy(78,6); writeln('|');
                rep[net].kode:=hrg[plh].kode;
                plh:=100;
        end;
        until(plh=100);
        if plh = 100 then
                 writeln('|=============================================================================|') ;
        writeln;
        readln;
        gotoxy(4,30);writeln('Apakah anda ingim memesan tiket ini ? (y/n) ');
        gotoxy(4,31);readln(fin);
        pol:=0;
        if fin = 'y' then
        begin

                oke:=oke+1;
                rep[oke].nama:= fix1;
                rep[oke].alamat:=fix2;
                clrscr;
                gotoxy(10,10);writeln('Terima Kasih telah membeli tiket disini');
                delay(1000);
                clrscr;
                tiket;
        end
        else if fin ='n' then
                oke:=oke;
                net:=net-1;
                data;


end;
procedure tiket;
begin
        clrscr;
        gotoxy(4,6);writeln;
        for grs:=1 to 11 do
           if (grs=1) or (grs=3) or (grs=11) then
                writeln('|-----------------------------------------------------------------------------|')
           else
                writeln('|                                                                             |');
        gotoxy(27,8);writeln('BUKTI PEMBAYARAN E-TIKET');
        bbc:=bbc;
        while (bbc<=oke) do
        begin
            bbc:=bbc+1;

           gotoxy(6,10);writeln(rep[bbc].mask); gotoxy(15,10); writeln('( ',rep[bbc].kode);gotoxy(23,10); writeln(')');
           gotoxy(27,14); writeln(rep[bbc].asaa); gotoxy(35,14); writeln('--T0--'); gotoxy(44,14); writeln(rep[bbc].tuj);
           gotoxy(45,16);writeln('Kode Boking : RNSTQ',bbc);
           gotoxy(50,10);writeln('Tanggal :',rep[bbc].tan);
           gotoxy(50,13); writeln('Rp.',rep[bbc].har);
        end;
         readln;
         clrscr;
         menu;
end;
procedure report;
begin
        clrscr;
        writeln('Laporan Pembelian Tiket pesawat');
        for awa:=1 to oke do
        begin
                writeln('Nama Pemesan :',rep[awa].nama);
                writeln('Alamat       :',rep[awa].alamat);
                writeln('Maskapai     :',rep[awa].mask);
                writeln('Asal         :',rep[awa].asaa);
                writeln('Tujuan       :',rep[awa].tuj);
                writeln('Harga        :',rep[awa].har);
        end;
        readln;
        readln;
        menut;
end;

begin
clrscr;
        delay(500);
        delay (50);gotoxy(3,1); writeln('___'); delay (50);gotoxy(2,2); writeln('|'); gotoxy(2,3); writeln('|');
        delay (50);gotoxy(3,4); writeln('---');delay (50);gotoxy(6,5); writeln('|'); gotoxy(6,6); writeln('|');
        delay (50);gotoxy(3,7); writeln('---');
        for x:=1 to 6 do
        begin
        delay(50);
        gotoxy(8,7+1-x); writeln('|     |');
        gotoxy(9,1); writeln(     '_____');
        gotoxy(9,4); writeln(     '-----');
        end;
        for y:= 1 to 6 do
        begin
        delay(50);
        gotoxy(16,7+1-y); writeln('|       |');
        end;
        for y:=1 to 3 do
        begin
        delay(50);
        gotoxy(16+y,1); writeln('_');
        gotoxy(24-y,1); writeln('_');
        end;
        for z:=1 to 4 do
        begin
        delay(50);
        gotoxy(20,1+z); writeln('|');
        end;
        for q:=1 to 6 do
        begin
        delay(50);
        gotoxy(26,1+q); writeln('|     |');
        gotoxy(27,7);writeln('_____');
        end;
        for e:=1 to 6 do
        begin
        delay(50);
        gotoxy(35,1+e); writeln('|');
        delay(50);
        gotoxy(38,1+e); writeln('|');
        end;
        for r:=1 to 3 do
        begin
        gotoxy(39-1+r,4+1-r); writeln('/');
        gotoxy(38+r,5-1+r); writeln('\');
        end;
        delay (30); gotoxy(46,7); writeln('A I R L I N E S');
        delay(1000);
CLRSCR;
welcome;
end.

