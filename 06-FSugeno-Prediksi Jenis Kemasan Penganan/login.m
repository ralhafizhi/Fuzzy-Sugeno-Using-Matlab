% Membuat progress bar
progress = waitbar(0,'Loading....');
progressObject = findobj(progress,'Type','Patch');
steps = 1000;
for i = 1:steps
    waitbar(i/steps, progress,sprintf('Loading....%.0f %%',i/steps*100));
    
end
delete(progress)


pilihan = questdlg('Selamat datang di sistem kami, apakah anda ingin masuk?', ...
	'Masuk Program', ...
	'Masuk','Tidak','Tidak');
% Handle response
switch pilihan
    case 'Masuk'
        guidata(Prediksi_Kemasan_Penganan);
    case 'Tidak'
        return;
end
