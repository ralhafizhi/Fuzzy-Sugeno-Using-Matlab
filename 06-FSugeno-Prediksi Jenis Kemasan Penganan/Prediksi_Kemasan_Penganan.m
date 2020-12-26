function varargout = Prediksi_Kemasan_Penganan(varargin)
% PREDIKSI_KEMASAN_PENGANAN MATLAB code for Prediksi_Kemasan_Penganan.fig
%      PREDIKSI_KEMASAN_PENGANAN, by itself, creates a new PREDIKSI_KEMASAN_PENGANAN or raises the existing
%      singleton*.
%
%      H = PREDIKSI_KEMASAN_PENGANAN returns the handle to a new PREDIKSI_KEMASAN_PENGANAN or the handle to
%      the existing singleton*.
%
%      PREDIKSI_KEMASAN_PENGANAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PREDIKSI_KEMASAN_PENGANAN.M with the given input arguments.
%
%      PREDIKSI_KEMASAN_PENGANAN('Property','Value',...) creates a new PREDIKSI_KEMASAN_PENGANAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Prediksi_Kemasan_Penganan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Prediksi_Kemasan_Penganan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Prediksi_Kemasan_Penganan

% Last Modified by GUIDE v2.5 25-Nov-2018 18:16:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Prediksi_Kemasan_Penganan_OpeningFcn, ...
                   'gui_OutputFcn',  @Prediksi_Kemasan_Penganan_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before Prediksi_Kemasan_Penganan is made visible.
function Prediksi_Kemasan_Penganan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Prediksi_Kemasan_Penganan (see VARARGIN)

% Choose default command line output for Prediksi_Kemasan_Penganan
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

[images map] = imread('infosys.jpg');
guidata(hObject, handles);
axes(handles.axes7);
image(images)
colormap(map)
imshow(images)


% --- Outputs from this function are returned to the command line.
function varargout = Prediksi_Kemasan_Penganan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Beranda_1_Callback(hObject, eventdata, handles)
set(handles.panel_beranda,'visible','on');
set(handles.panel_informasi,'visible','off');
%set(handles.panel_tentang,'visible','off');
set(handles.panel_program,'visible','off');


% --------------------------------------------------------------------
function Informasi_2_Callback(hObject, eventdata, handles)
set(handles.panel_beranda,'visible','off');
set(handles.panel_informasi,'visible','on');
%set(handles.panel_tentang,'visible','off');
set(handles.panel_program,'visible','off');



% --------------------------------------------------------------------
function Tentang_3_Callback(hObject, eventdata, handles)
% hObject    handle to Tentang_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Program_4_Callback(hObject, eventdata, handles)
set(handles.panel_beranda,'visible','off');
set(handles.panel_informasi,'visible','off');
%set(handles.panel_tentang,'visible','off');
set(handles.panel_program,'visible','on');

% --------------------------------------------------------------------
function Keluar_5_Callback(hObject, eventdata, handles)
pilihan = questdlg('Apakah anda ingin keluar dari program?', ...
	'Keluar Program', ...
	'Keluar','Tidak','Tidak');
% Handle response
switch pilihan
    case 'Keluar'
        close(Prediksi_Kemasan_Penganan);
    case 'Tidak'
        return;
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

axes(hObject);
imshow('uika.jpg');
grid off;
axis off;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes during object creation, after setting all properties.
function togglebutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
figure;plotfis(prediksi)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
mfedit(prediksi)

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
ruleedit(prediksi)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
hasil = evalfis([handles.kandungan_lemak handles.kandungan_air handles.umur_simpan handles.harga],prediksi);
ruleview(prediksi,hasil)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
surfview(prediksi)

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% Menampilkan rule
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
hasil = evalfis([handles.kandungan_lemak handles.kandungan_air handles.umur_simpan handles.harga],prediksi);
rules=showrule(hasil)
set(handles.listbox1,'String',rules);


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
pilihan = questdlg('Apakah anda ingin keluar dari program?', ...
	'Keluar Program', ...
	'Keluar','Tidak','Tidak');
% Handle response
switch pilihan
    case 'Keluar'
        close(Prediksi_Kemasan_Penganan);
    case 'Tidak'
        return;
end



function edit16_Callback(hObject, eventdata, handles)

% Membuat handles pada lemak
kandungan_lemak=str2num(get(hObject,'string'));
handles.kandungan_lemak=kandungan_lemak;
guidata(hObject,handles);

% Validasi form lemak
kandungan_lemak = (handles.kandungan_lemak);
if kandungan_lemak <0.4 
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Kandungan lemak tidak boleh kurang dari 0,4%','Warning','warn',opts);
    set(handles.edit16, 'string', '');
elseif kandungan_lemak >18,
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Kandungan lemak tidak boleh lebih dari 18%','Warning','warn',opts);
    set(handles.edit16, 'string', '');

end

% Membuat rendah,sedang,tinggi pada kandungan lemak
if      kandungan_lemak >=0.4 && kandungan_lemak <=6.74
        set(handles.text104,'String','Rendah');
elseif  kandungan_lemak >=2.86 && kandungan_lemak <=15.5
        set(handles.text104,'String','Sedang');
elseif  kandungan_lemak >=11.6 && kandungan_lemak <=18  
        set(handles.text104,'String','Tinggi');
elseif  kandungan_lemak <0.4 || kandungan_lemak >18  
        set(handles.text104,'String','');
end


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% Membuat handles pada kandungan air
kandungan_air=str2num(get(hObject,'string'));
handles.kandungan_air=kandungan_air;
guidata(hObject,handles);

% Validasi form kandungan air
kandungan_air = (handles.kandungan_air);
if kandungan_air <0.12 
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Kandungan air (AW) tidak boleh kurang dari 0,12%','Warning','warn',opts);
    set(handles.edit17, 'string', '');
      
elseif kandungan_air >0.9
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Kandungan air (AW) tidak boleh lebih dari 0,9%','Warning','warn',opts);
    set(handles.edit17, 'string', '');
end

% Membuat rendah,sedang,tinggi pada kandungan air
if      kandungan_air >=0.12 && kandungan_air <=0.4
        set(handles.text106,'String','Kering');
elseif  kandungan_air >=0.23 && kandungan_air <=0.79
        set(handles.text106,'String','Sedikit Basah');
elseif  kandungan_air >=0.62 && kandungan_air <=0.9 
        set(handles.text106,'String','Basah');
elseif  kandungan_air<0.12 | kandungan_air >0.9 
        set(handles.text106,'String','');
end



% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% Membuat handles pada umur simpan
umur_simpan=str2num(get(hObject,'string'));
handles.umur_simpan=umur_simpan;
guidata(hObject,handles);

% Validasi form umur_simpan
umur_simpan = (handles.umur_simpan);
if umur_simpan <7
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Umur simpan tidak boleh kurang dari 7 hari','Warning','warn',opts);
    set(handles.edit18, 'string', '');
    
elseif umur_simpan >180
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Umur simpan tidak boleh lebih dari 180 hari','Warning','warn',opts);
    set(handles.edit18, 'string', '');
end

% Membuat pendek,sedang,panjang pada umur simpan
if      umur_simpan >=7 && umur_simpan <=69
        set(handles.text107,'String','Pendek');
elseif  umur_simpan >=31 && umur_simpan <=155
        set(handles.text107,'String','Sedang');
elseif  umur_simpan >=117 && umur_simpan <=180 
        set(handles.text107,'String','Panjang');
elseif  umur_simpan<7 | umur_simpan >180
        set(handles.text107,'String','');
end


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% Membuat handles pada umur simpan
harga=str2num(get(hObject,'string'));
handles.harga=harga;
guidata(hObject,handles);

% Validasi form umur_simpan
harga = (handles.harga);
if harga <=0
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Harga tidak boleh kurang dari 0 dan sama dengan 0 ','Warning','warn',opts);
    set(handles.edit19, 'string', '');
     
elseif harga >50
    opts=struct('WindowStyle','modal',...
                'Interpreter','tex');
    f = msgbox('\fontname{calibri(body)}\fontsize{11} Harga tidak boleh lebih dari 50 ribu ','Warning','warn',opts);
    set(handles.edit19, 'string', '');
end

% Membuat murah,sedang,mahal pada harga
if      harga >=0 && harga <=18
        set(handles.text108,'String','Murah');
elseif  harga >=7 && harga <=43
        set(handles.text108,'String','Sedang');
elseif  harga >=32 && harga <=50
        set(handles.text108,'String','Mahal');
elseif  harga<50 | harga >50
        set(handles.text107,'String','');
end


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)

% Membuat progress bar
progress = waitbar(0,'Proses....');
progressObject = findobj(progress,'Type','Patch');
steps = 1000;
for i = 1:steps
    waitbar(i/steps, progress,sprintf('Proses....%.0f %%',i/steps*100));
    
end
delete(progress)

% Membaca file fuzzy sugeno
prediksi=readfis('06-FSugeno-Prediksi Jenis Kemasan Penganan.fis');
hasil = evalfis([handles.kandungan_lemak handles.kandungan_air handles.umur_simpan handles.harga],prediksi);
set(handles.edit30,'string',hasil);

% Menampilkan hasil pada static text
kandungan_lemak = (handles.kandungan_lemak);
set(handles.text109,'String',kandungan_lemak);

kandungan_air = (handles.kandungan_air);
set(handles.text113,'String',kandungan_air);

umur_simpan = (handles.umur_simpan);
set(handles.text114,'String',umur_simpan);

harga = (handles.harga);
set(handles.text115,'String',harga);





% fungsi decision
%hasil>=0 && hasil<=0.169
if      hasil>0 && hasil<=0.01 || hasil>=0 && hasil<=0.169
        set(handles.edit23,'string','Kategori ke-satu');
        set(handles.edit22,'string','Plastik (Plastik zipper/gusset plastik/plastik bag)');
        set(handles.text119,'string','Kategori ke-satu');
        set(handles.text118,'string','Plastik (Plastik zipper/gusset plastik/plastik bag)');
        set(handles.text153,'string','Plastik (Plastik zipper/gusset plastik/plastik bag)');
        
        % Menambahkan gambar contoh kemasan
        [images map] = imread('01-plastik-gausset.jpg');
        guidata(hObject, handles);
        axes(handles.axes10);
        image(images)
        colormap(map)
        imshow(images)


%hasil>=0.17 && hasil<=0.329
elseif  hasil>=0.01 && hasil<=0.2 || hasil>=0.17 && hasil<=0.329
        set(handles.edit23,'string','Kategori ke-dua');
        set(handles.edit22,'string','Kertas karton (Kraft paper food bags)');
        set(handles.text119,'string','Kategori ke-dua');
        set(handles.text118,'string','Kertas karton (Kraft paper food bags)');
        set(handles.text153,'string','Kertas karton (Kraft paper food bags)');
        
        % Menambahkan gambar contoh kemasan
        [images map] = imread('02-kraft paper food bags.jpg');
        guidata(hObject, handles);
        axes(handles.axes10);
        image(images)
        colormap(map)
        imshow(images)
       
%hasil>=0.33 && hasil<=0.489        
elseif  hasil>=0.2 && hasil<=0.4 || hasil>=0.33 && hasil<=0.489 
        set(handles.edit23,'string','Kategori ke-tiga');
        set(handles.edit22,'string','Composite/multilayer (Stand up pouch)');
        set(handles.text119,'string','Kategori ke-tiga');
        set(handles.text118,'string','Composite/multilayer (Stand up pouch)');
        set(handles.text153,'string','Composite/multilayer (Stand up pouch)');
        
        % Menambahkan gambar contoh kemasan
        [images map] = imread('03-Stand up pouch.jpg');
        guidata(hObject, handles);
        axes(handles.axes10);
        image(images)
        colormap(map)
        imshow(images)
        
%hasil>=0.49 && hasil<=0.649        
elseif  hasil>=0.4 && hasil<=0.6 || hasil>=0.49 && hasil<=0.649  
        set(handles.edit23,'string','Kategori ke-empat');
        set(handles.edit22,'string','Gelas/mika (Toples square dan toples gelas)');
        set(handles.text119,'string','Kategori ke-empat');
        set(handles.text118,'string','Gelas/mika (Toples square dan toples gelas)');
        set(handles.text153,'string','Gelas/mika (Toples square dan toples gelas)');
        
        % Menambahkan gambar contoh kemasan
        [images map] = imread('04-Toples Gelas.jpg');
        guidata(hObject, handles);
        axes(handles.axes10);
        image(images)
        colormap(map)
        imshow(images)
        
%hasil>=0.65 && hasil<=0.799
elseif  hasil>=0.6 && hasil<=0.8 || hasil>=0.65 && hasil<=0.799
        set(handles.edit23,'string','Kategori ke-lima');
        set(handles.edit22,'string','Kaleng/logam (Tincan)');
        set(handles.text119,'string','Kategori ke-lima');
        set(handles.text118,'string','Kaleng/logam (Tincan)');
        set(handles.text153,'string','Kaleng/logam (Tincan)');
         
        % Menambahkan gambar contoh kemasan
        [images map] = imread('05-Tincan.jpg');
        guidata(hObject, handles);
        axes(handles.axes10);
        image(images)
        colormap(map)
        imshow(images)
        
%hasil>=0.8 && hasil<=1.00  
elseif  hasil>=0.8 && hasil<=1 || hasil>=0.8 && hasil<=1.00 
        set(handles.edit23,'string','Kategori ke-enam');
        set(handles.edit22,'string','Kemasan ganda (Kombinasi kemasan primer,sekunder atau tersier)');
        set(handles.text119,'string','Kategori ke-enam');
        set(handles.text118,'string','Kemasan ganda (Kombinasi kemasan primer,sekunder atau tersier)');
        set(handles.text118,'string','Kemasan ganda (Kombinasi)');
        
        % Menambahkan gambar contoh kemasan
        [images map] = imread('06-Kemasan Ganda.jpg');
        guidata(hObject, handles);
        axes(handles.axes10);
        image(images)
        colormap(map)
        imshow(images)
end





% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% Mereset form
set(handles.edit16, 'string', '');
set(handles.edit17, 'string', '');
set(handles.edit18, 'string', '');
set(handles.edit19, 'string', '');
set(handles.edit30, 'string', '');
set(handles.edit22, 'string', '');
set(handles.edit23, 'string', '');
set(handles.text104, 'string', '');
set(handles.text106, 'string', '');
set(handles.text107, 'string', '');
set(handles.text108, 'string', '');
set(handles.text109, 'string', '');
set(handles.text113, 'string', '');
set(handles.text114, 'string', '');
set(handles.text115, 'string', '');
set(handles.text118, 'string', '');
set(handles.text119, 'string', '');
set(handles.text153, 'string', '');
cla 
cla(handles.axes10)



% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes6


% --- Executes during object creation, after setting all properties.
function text98_CreateFcn(hObject, eventdata, handles)



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text99_CreateFcn(hObject, eventdata, handles)
set(handles.edit16);



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text104_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text106_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text107_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text108_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text109_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text110_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text112_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function text109_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to text109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function text113_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text114_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text115_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text115 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text118_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text118 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text119_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text119 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function axes10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes10
