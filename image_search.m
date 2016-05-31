image_search.m (Searching an image in the database)
function varargout = image_search(varargin)
% IMAGE_SEARCH M-file for image_search.fig
% IMAGE_SEARCH, by itself, creates a new IMAGE_SEARCH or raises the
existing
% singleton*.
%
% H = IMAGE_SEARCH returns the handle to a new IMAGE_SEARCH or the
handle to
% the existing singleton*.
%
% IMAGE_SEARCH('CALLBACK',hObject,eventData,handles,...) calls the
local
% function named CALLBACK in IMAGE_SEARCH.M with the given input
arguments.
%
% IMAGE_SEARCH('Property','Value',...) creates a new IMAGE_SEARCH or
raises the
% existing singleton*. Starting from the left, property value pairs
are
% applied to the GUI before image_search_OpeningFcn gets called. An
% unrecognized property name or invalid value makes property
application
% stop. All inputs are passed to image_search_OpeningFcn via
varargin.
%
% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows only one
% instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help image_search
% Last Modified by GUIDE v2.5 13-Mar-2011 01:10:11
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
 'gui_Singleton', gui_Singleton, ...
'gui_OpeningFcn', @image_search_OpeningFcn, ...
'gui_OutputFcn', @image_search_OutputFcn, ...
'gui_LayoutFcn', [] , ...
'gui_Callback', []);
if nargin && ischar(varargin{1})
 gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
 [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
 gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
% --- Executes just before image_search is made visible.
function image_search_OpeningFcn(hObject, eventdata, handles, varargin)
67
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to image_search (see VARARGIN)
% Choose default command line output for image_search
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes image_search wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = image_search_OutputFcn(hObject, eventdata, handles)
% varargout cell array for returning output args (see VARARGOUT);
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;
% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject handle to slider1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
% get(hObject,'Min') and get(hObject,'Max') to determine range of
slider
% Find the value of the slider
value1 = get(handles.slider1,'value');
% Flow thw value in the text field
str = sprintf('%3.1f', value1);
set(handles.label1,'string',str)
set(handles.slider1,'userdata',value1)
% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject handle to slider1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
 set(hObject,'BackgroundColor',[.9 .9 .9]);
end
68
% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject handle to slider2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
% get(hObject,'Min') and get(hObject,'Max') to determine range of
slider
% Find the value of the slider
value2 = get(handles.slider2,'value');
%
% Flow thw value in the text field
str = sprintf('%3.1f', value2);
set(handles.label2,'string',str)
set(handles.slider2,'userdata',value2)
% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject handle to slider2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
 set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject handle to slider3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
% get(hObject,'Min') and get(hObject,'Max') to determine range of
slider
% Find the value of the slider
value3 = get(handles.slider3,'value');
% Flow thw value in the text field
str = sprintf('%3.1f', value3);
set(handles.label3,'string',str)
set(handles.slider3,'userdata',value3)
% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject handle to slider3 (see GCBO)
69
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
 set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function label1_Callback(hObject, eventdata, handles)
% hObject handle to label1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of label1 as text
% str2double(get(hObject,'String')) returns contents of label1 as a
double
% --- Executes during object creation, after setting all properties.
function label1_CreateFcn(hObject, eventdata, handles)
% hObject handle to label1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
 set(hObject,'BackgroundColor','white');
end
function label2_Callback(hObject, eventdata, handles)
% hObject handle to label2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of label2 as text
% str2double(get(hObject,'String')) returns contents of label2 as a
double
% --- Executes during object creation, after setting all properties.
function label2_CreateFcn(hObject, eventdata, handles)
% hObject handle to label2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
 set(hObject,'BackgroundColor','white');
end
70
function label3_Callback(hObject, eventdata, handles)
% hObject handle to label3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of label3 as text
% str2double(get(hObject,'String')) returns contents of label3 as a
double
% --- Executes during object creation, after setting all properties.
function label3_CreateFcn(hObject, eventdata, handles)
% hObject handle to label3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
 set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
value1 = get(handles.slider1,'userdata');
value2 = get(handles.slider2,'userdata');
value3 = get(handles.slider3,'userdata');
finalvalue = value1 + value2 + value3;
% assignin('base','va',finalvalue);
if finalvalue >= 1.1314
 errordlg('Wrong wightages Assigned to Features','Assignment Error');
end

if finalvalue < 0.8700
 errordlg('Wrong wightages Assigned to Features','Assignment Error');
end
% --- Executes on button press in search.
function search_Callback(hObject, eventdata, handles)
% hObject handle to search (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
FileName = get(handles.pushbutton1,'userdata');
fullName = get(handles.pushbutton1,'userdata');
71
img = imread(fullName);
qimage = struct('Name',FileName,'Images',img);
qimage.Name;
qimage.Images;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% CALCULATING GRAY LEVEL FEATURE VECTORS OF THE QUERY IMAGE %%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_axis = 0:16:255;
y_axis = img(1:end);
% hist(y_axis,x_axis);
frequency = histc(y_axis,x_axis);
qgraylevelFV = struct('Name',FileName,'Freq',frequency);
qgraylevelFV.Name;
qgraylevelFV.Freq(1);
qgraylevelFV.Freq(2);
qgraylevelFV.Freq(3);
qgraylevelFV.Freq(4);
qgraylevelFV.Freq(5);
qgraylevelFV.Freq(6);
qgraylevelFV.Freq(7);
qgraylevelFV.Freq(8);
qgraylevelFV.Freq(9);
qgraylevelFV.Freq(10);
qgraylevelFV.Freq(11);
qgraylevelFV.Freq(12);
qgraylevelFV.Freq(13);
qgraylevelFV.Freq(14);
qgraylevelFV.Freq(15);
qgraylevelFV.Freq(16);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% CALCULATING TEXTURE FEATURE VECTORS OF THE QUERY IMAGE %%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GLCMS = graycomatrix(img,'Offset',[0 1; 0 2; 0 3; 0 4;-1 1; -2 2; -3 3;...
 -4 4;
-1 0; -2 0; -3 0; -4 0;-1 -1; -2 -2; -3 -3; -4 -4]);
contrast = graycoprops(GLCMS,'contrast');
correlation = graycoprops(GLCMS,'correlation');
energy = graycoprops(GLCMS,'energy');
homogeneity = graycoprops(GLCMS,'homogeneity');
% Calculating mean of all the contrast of 16 GLCMS
sum_contrast = 0;
for i = 1:16
 sum_contrast = sum_contrast + contrast.Contrast(i);
 mean_contrast = sum_contrast/16;
end
mean_contrast;
% Calculating mean of all the correlation of 16 GLCMS
72
sum_correlation = 0;
for i = 1:16
 sum_correlation = sum_correlation + correlation.Correlation(i);
 mean_correlation = sum_correlation/16;
end
mean_correlation;
% Calculating mean of all the homogeneity of 16 GLCMS
sum_homogeneity = 0;
for i = 1:16
 sum_homogeneity = sum_homogeneity + homogeneity.Homogeneity(i);
 mean_homogeneity = sum_homogeneity/16;
end
mean_homogeneity;
% Calculating mean of all the energy of 16 GLCMS
sum_energy = 0;
for i = 1:16
 sum_energy = sum_energy + energy.Energy(i);
 mean_energy = sum_energy/16;
end
mean_energy;
qtextureFV = struct('Name',FileName,'Avgcontrast',mean_contrast,...
 'Avgcorrelation',mean_correlation,'Avghomogeneity',mean_homogeneity,...
 'Avgenergy',mean_energy);
qtextureFV.Name;
qtextureFV.Avgcontrast;
qtextureFV.Avgcorrelation;
qtextureFV.Avghomogeneity;
qtextureFV.Avgenergy;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%CALCULATING SHAPE FEATURE VECTORS OF THE QUERY IMAGE %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Convert input image into binary image using threshold value
binary_image = im2bw(img,0.94);
% figure, imshow(binary_image);
% Choosing the structuring element
se = strel('disk',3);
% Morphological operation for image smoothing
openedBW = imopen(binary_image,se);
% figure, imshow(openedBW);
bw = bwareaopen(openedBW,1500);
% figure, imshow(bw)
73
% fill any holes, so that regionprops can be used to estimate
% the area enclosed by each of the boundaries
bw = imfill(bw,'holes');
% figure,imshow(bw)
[B,L] = bwboundaries(bw,'noholes');
stats = regionprops(L,'Area','Centroid');
threshold = 0.94;
% loop over the boundaries
for k = 1:length(B)
 % obtain (X,Y) boundary coordinates corresponding to label 'k'
 boundary = B{k};
 % compute a simple estimate of the object's perimeter
 delta_sq = diff(boundary).^2;
 perimeter = sum(sqrt(sum(delta_sq,2)));
 % obtain the area calculation corresponding to label 'k'
 area = stats(k).Area;
 % compute the roundness metric
 metric = 4*pi*area/perimeter^2;

 qshapeFV = struct('Name',FileName,'Peri',perimeter,'Ar',area,...
 'Metr',metric);

 qshapeFV.Name;
 qshapeFV.Peri;
 qshapeFV.Ar;
 qshapeFV.Metr;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% ESTABLISHING CONNECTION BETWEEN ORACLE AND MATLAB %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
img = reshape(img,[],1);
javaaddpath 'D:/oracle/product/10.2.0/db_1/jdbc/lib/ojdbc14.jar';
conn = database('oracle','system','deepak',...
 'oracle.jdbc.driver.OracleDriver', ....
 'jdbc:oracle:thin:');
a = isconnection(conn);
if a == 0
 disp ('connection not established');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% GRAYLEVEL SIMILARITY CALCULATION %%%%%%%%%%%%%%%
74
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
curs2 = exec(conn, 'select * from graylevelfv');
setdbprefs('DataReturnFormat','structure');
curs2 = fetch(curs2);
temp = curs2.Data;
count = rows(curs2);
temp = curs2.Data;
p = 1;
while p < count + 1
 temp.FIRSTBIN(p);
 temp.SECONDBIN(p);
 temp.THIRDBIN(p);
 temp.FOURTHBIN(p);
 temp.FIFTHBIN(p);
 temp.SIXTHBIN(p);
 temp.SEVENTHBIN(p);
 temp.EIGHTHBIN(p);
 temp.NINETHBIN(p);
 temp.TENTHBIN(p);
 temp.ELEVENTHBIN(p);
 temp.TWELVETHBIN(p);
 temp.THIRTEENTHBIN(p);
 temp.FOURTEENTHBIN(p);
 temp.FIFTEENTHBIN(p);
 temp.SIXTEENTHBIN(p);

 glsimilarity = (sqrt ((temp.FIRSTBIN(p)-qgraylevelFV.Freq(1))^2 +...
 (temp.SECONDBIN(p)-qgraylevelFV.Freq(2))^2 +...
 (temp.THIRDBIN(p)-qgraylevelFV.Freq(3))^2 +...
 (temp.FOURTHBIN(p)-qgraylevelFV.Freq(4))^2 +...
 (temp.FIFTHBIN(p)-qgraylevelFV.Freq(5))^2 +...
 (temp.SIXTHBIN(p)-qgraylevelFV.Freq(6))^2 +...
 (temp.SEVENTHBIN(p)-qgraylevelFV.Freq(7))^2 +...
 (temp.EIGHTHBIN(p)-qgraylevelFV.Freq(8))^2 +...
 (temp.NINETHBIN(p)-qgraylevelFV.Freq(9))^2 +...
 (temp.TENTHBIN(p)-qgraylevelFV.Freq(10))^2 +...
 (temp.ELEVENTHBIN(p)-qgraylevelFV.Freq(11))^2 +...
 (temp.TWELVETHBIN(p)-qgraylevelFV.Freq(12))^2 +...
 (temp.THIRTEENTHBIN(p)-qgraylevelFV.Freq(13))^2 +...
 (temp.FOURTEENTHBIN(p)-qgraylevelFV.Freq(14))^2 +...
 (temp.FIFTEENTHBIN(p)-qgraylevelFV.Freq(15))^2 +...
 (temp.SIXTEENTHBIN(p)-qgraylevelFV.Freq(16))^2));

 % accesing the gray level similarity weightage

 value1 = get(handles.slider1,'userdata');

 assignin('base','test1',value1);
 % calculating the gray level weightage similarity


 weighted_gl_similarity(p) = value1 * glsimilarity;
 assignin('base','testa',weighted_gl_similarity);
75

 weighted_gl_similarity(p) = [weighted_gl_similarity(p)];
 image_name(p) = temp.IMAGENAME(p);
 assignin('base','test1',weighted_gl_similarity);

 p = p + 1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% TEXTURE SIMILARITY CALCULATION %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
curs3 = exec(conn, 'select * from texturefv');
setdbprefs('DataReturnFormat','structure');
curs3 = fetch(curs3);
temp = curs3.Data;
count3 = rows(curs3);
p = 1;
while p < count3 + 1
 temp.CONTRAST(p);
 temp.CORRELATION(p);
 temp.HOMOGENEITY(p);
 temp.ENERGY(p);

 texsimilarity = sqrt ((temp.CONTRAST(p)-qtextureFV.Avgcontrast)^2 +...
 (temp.CORRELATION(p)-qtextureFV.Avgcorrelation)^2 +...
 (temp.HOMOGENEITY(p)-qtextureFV.Avghomogeneity)^2 +...
 (temp.ENERGY(p)-qtextureFV.Avgenergy)^2);

 % accesing the gray level similarity weightage
 value2 = get(handles.slider2,'userdata');

 assignin('base','test2',value2);
 % calculating the weighted similarity

 weighted_tex_similarity(p) = value2 * texsimilarity;
 assignin('base','testb',weighted_tex_similarity);

 weighted_tex_similarity(p) = [weighted_tex_similarity(p)];
 image_name(p) = temp.IMAGENAME(p);
 assignin('base','test2',weighted_tex_similarity);
 p = p +1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% SHAPE SIMILARITY CALCULATION %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
curs4 = exec(conn, 'select * from shapefv');
76
setdbprefs('DataReturnFormat','structure');
curs4 = fetch(curs4);
temp = curs4.Data;
count4 = rows(curs4);
p = 1;
while p < count4 + 1
 temp.PERIMETER(p);
 temp.AREA(p);
 temp.METRIC(p);

 shapesimilarity = sqrt ((temp.PERIMETER(p)-qshapeFV.Peri)^2 +...
 (temp.AREA(p)-qshapeFV.Ar)^2 +...
 (temp.METRIC(p)-qshapeFV.Metr)^2);

 % accesing the gray level similarity weightage
 value3 = get(handles.slider3,'userdata');

 assignin('base','test3',value3);
 % calculating the weighted similarity

 weighted_shape_similarity(p) = value3 * shapesimilarity;

 assignin('base','testc',weighted_shape_similarity);
 weighted_shape_similarity(p) = [weighted_shape_similarity(p)];
 imagename_array(p) = temp.IMAGENAME(p);
 assignin('base','test3',imagename_array);
 assignin('base','test4',weighted_shape_similarity);


 value_array(p)= weighted_gl_similarity(p) +...
 weighted_tex_similarity(p)+...
 weighted_shape_similarity(p);
 assignin('base','test5',value_array);

 p = p +1;

end
%%%% SORTING THE SIMILARITY VALUES AND ASSIGNING TO IMAGE MAMES %%%%%%%%%
value_array;
imagename_array;
aa = 1;
bb = 1;
for aa = 1:length(value_array)
 if aa <= length(value_array)
 for bb = 1:length(imagename_array)
 if bb <= length(imagename_array)
 if value_array(aa) <= value_array(bb)
 tempo = value_array(aa);
value_array(aa) = value_array(bb);
77
 value_array(bb) = tempo;
tmp = imagename_array(aa);
imagename_array(aa) = imagename_array(bb);
imagename_array(bb) = tmp;
 end
 end
 end
 end
end
for bb = 1:length(value_array)
 value_array(bb);
end
for bb = 1:length(value_array)
 imagename_array(bb);
end

value_array;
imagename_array;
folder_images = dir('*.tif');
number_of_images = length(folder_images);
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(1))
 imagename_array(1)
 image1 = cur_image;
 imshow(image1,'Parent',handles.axes2);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(2))
 imagename_array(2)
 image2 = cur_image;
 imshow(image2,'Parent',handles.axes3);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(3))
 imagename_array(3)
 image3 = cur_image;
 imshow(image3,'Parent',handles.axes4);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(4))
78
 imagename_array(4)
 image4 = cur_image;
 imshow(image4,'Parent',handles.axes5);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(5))
 imagename_array(5)
 image5 = cur_image;
 imshow(image5,'Parent',handles.axes6);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(6))
 imagename_array(6)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes7);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(7))
 imagename_array(7)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes8);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(8))
 imagename_array(8)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes9);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(9))
 imagename_array(9)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes10);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(10))
79
 imagename_array(10)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes11);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(11))
 imagename_array(11)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes12);
 end
end
for x = 1:number_of_images
 cur_imagename = folder_images(x).name;
 cur_image = imread(cur_imagename);
 if strcmp(cur_imagename,imagename_array(12))
 imagename_array(12)
 image6 = cur_image;
 imshow(image6,'Parent',handles.axes13);
 end
end
close(curs2)
close(curs3)
close(curs4)
exec(conn,'commit');
close (conn);
end
% --- Executes on button press in close3.
function close3_Callback(hObject, eventdata, handles)
% hObject handle to close3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% to pass to the modal dialog.
pos_size = get(handles.figure1,'Position');
% Call modaldlg with the argument 'Position'.
user_response = confirm_exit('Title','Confirm Close');
switch user_response
 case {'No'}
 % take no action
 case 'Yes'
 % Prepare to close GUI application window
 delete(handles.figure1)
end
% --- Executes on button press in select.
function select_Callback(hObject, eventdata, handles)
% hObject handle to select (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
80
[FileName,folder] = uigetfile({'*.tif*'},'Select file');
if FileName ~= 0
 fullName = fullfile(folder,FileName);
end
J = imread(fullName);
imshow(J,'Parent',handles.axes1);
set(handles.pushbutton1,'userdata',fullName)
set(handles.pushbutton1,'userdata',FileName)
guidata(hObject,handles);
% --- Executes on button press in Back1.
function Back1_Callback(hObject, eventdata, handles)
% hObject handle to Back1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
homepage;
% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject handle to axes2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes2
% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject handle to axes3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes3
% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject handle to axes4 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes4
% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject handle to axes5 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes5
% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
81
% hObject handle to axes6 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes6
% --- Executes during object creation, after setting all properties.
function axes7_CreateFcn(hObject, eventdata, handles)
% hObject handle to axes7 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes7