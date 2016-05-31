homepage.m (Home page of user interface)
function varargout = homepage(varargin)
% HOMEPAGE M-file for homepage.fig
% HOMEPAGE, by itself, creates a new HOMEPAGE or raises the existing
% singleton*.
%
% H = HOMEPAGE returns the handle to a new HOMEPAGE or the handle to
% the existing singleton*.
%
% HOMEPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
% function named CALLBACK in HOMEPAGE.M with the given input
arguments.
%
% HOMEPAGE('Property','Value',...) creates a new HOMEPAGE or raises
the
% existing singleton*. Starting from the left, property value pairs
are
% applied to the GUI before homepage_OpeningFcn gets called. An
% unrecognized property name or invalid value makes property
application
% stop. All inputs are passed to homepage_OpeningFcn via varargin.
%
% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows only one
% instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help homepage
% Last Modified by GUIDE v2.5 08-Mar-2011 14:57:06
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
 'gui_Singleton', gui_Singleton, ...
'gui_OpeningFcn', @homepage_OpeningFcn, ...
 'gui_OutputFcn', @homepage_OutputFcn, ...
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
% --- Executes just before homepage is made visible.
function homepage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
59
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to homepage (see VARARGIN)
% Choose default command line output for homepage
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes homepage wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = homepage_OutputFcn(hObject, eventdata, handles)
% varargout cell array for returning output args (see VARARGOUT);
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
addimagetodatabase;
% --- Executes on button press in search.
function search_Callback(hObject, eventdata, handles)
% hObject handle to search (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
image_search;
% --- Executes on button press in close1.
function close1_Callback(hObject, eventdata, handles)
% hObject handle to close1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
pos_size = get(handles.figure1,'Position');
user_response = confirm_exit('Title','Confirm close');
switch user_response
 case {'No'}
 % do nothing
 case 'Yes'
 delete(handles.figure1);

end
60
add_to_database.m (Adding new image to Database)
function varargout = addimagetodatabase(varargin)
% ADDIMAGETODATABASE M-file for addimagetodatabase.fig
% ADDIMAGETODATABASE, by itself, creates a new ADDIMAGETODATABASE or
raises the existing
% singleton*.
%
% H = ADDIMAGETODATABASE returns the handle to a new
ADDIMAGETODATABASE or the handle to
% the existing singleton*.
%
% ADDIMAGETODATABASE('CALLBACK',hObject,eventData,handles,...) calls
the local
% function named CALLBACK in ADDIMAGETODATABASE.M with the given input
arguments.
%
% ADDIMAGETODATABASE('Property','Value',...) creates a new
ADDIMAGETODATABASE or raises the
% existing singleton*. Starting from the left, property value pairs
are
% applied to the GUI before addimagetodatabase_OpeningFcn gets called.
An
% unrecognized property name or invalid value makes property
application
% stop. All inputs are passed to addimagetodatabase_OpeningFcn via
varargin.
%
% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows only one
% instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help addimagetodatabase
% Last Modified by GUIDE v2.5 08-Mar-2011 15:08:08
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
 'gui_Singleton', gui_Singleton, ...
'gui_OpeningFcn', @addimagetodatabase_OpeningFcn, ...
'gui_OutputFcn', @addimagetodatabase_OutputFcn, ...
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
% --- Executes just before addimagetodatabase is made visible.
61
function addimagetodatabase_OpeningFcn(hObject, eventdata, handles,
varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to addimagetodatabase (see VARARGIN)
% Choose default command line output for addimagetodatabase
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes addimagetodatabase wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = addimagetodatabase_OutputFcn(hObject, eventdata,
handles)
% varargout cell array for returning output args (see VARARGOUT);
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;
% --- Executes on button press in Browse.
function Browse_Callback(hObject, eventdata, handles)
% hObject handle to Browse (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
[FileName, folder] = uigetfile({'*.tif'}, 'Select File');
if FileName ~= 0
 fullName = fullfile(folder,FileName);
end
J = imread(fullName);
imshow(J,'Parent',handles.axes1);
set(handles.Browse, 'userdata', fullName)
set(handles.Browse, 'userdata', FileName)
guidata(hObject,handles);
% --- Executes on button press in Back.
function Back_Callback(hObject, eventdata, handles)
% hObject handle to Back (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
homepage;
% --- Executes on button press in add.
62
function add_Callback(hObject, eventdata, handles)
% hObject handle to add (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
FileName = get(handles.Browse,'userdata');
fullName = get(handles.Browse,'userdata');
img = imread(fullName);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% CALCULATING GRAY LEVEL FEATURE VECTORS OF THE LOADED IMAGE %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Histogram of an image
x_axis = 0:16:255;
y_axis = img(1:end);
% hist(y_axis,x_axis);
frequency = histc(y_axis,x_axis);
frequency(1);
frequency(2);
frequency(3);
frequency(4);
frequency(5);
frequency(6);
frequency(7);
frequency(8);
frequency(9);
frequency(10);
frequency(11);
frequency(12);
frequency(13);
frequency(14);
frequency(15);
frequency(16);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% CALCULATING TEXTURE FEATURE VECTORS OF INPUT IMAGE %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GLCMS = graycomatrix(img,'Offset',[0 1; 0 2; 0 3; 0 4;-1 1; -2 2;...
 -3 3; -4 4;
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
63
end
mean_contrast;
% Calculating mean of all the correlation of 16 GLCMS
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% CALCULATING SHAPE FEATURE VECTORS OF INPUT IMAGE %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% fill any holes, so that regionprops can be used to estimate
% the area enclosed by each of the boundaries
bw = imfill(bw,'holes');
64
% figure,imshow(bw)
[B,L] = bwboundaries(bw,'noholes');
% figure,imshow(bw)
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% CONNECTING TO THE ORACLE DATABASE %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
img = reshape(img,[],1);
javaaddpath 'D:/oracle/product/10.2.0/db_1/jdbc/lib/ojdbc14.jar';
conn = database('oracle','system','deepak',...
 'oracle.jdbc.driver.OracleDriver', ....
 'jdbc:oracle:thin:');
a = isconnection(conn);
% ping(conn);
if a == 0;
 disp ('connection not established');
end
% Storing the images and the image names in oracle table Images
exdata1 = {FileName, img};
fastinsert(conn, 'images', {'imagename';'image'},...
exdata1)
% Storing the image names and gray level feature vector in oracle table
% graylevelfv
exdata2 = {FileName, frequency(1), frequency(2), frequency(3),...
65
 frequency(4), frequency(5), frequency(6), frequency(7),...
 frequency(8),frequency(9), frequency(10), frequency(11),...
 frequency(12), frequency(13), frequency(14), frequency(15),...
 frequency(16)};
fastinsert(conn, 'graylevelfv', {'imagename'; 'firstbin'; 'secondbin';...
 'thirdbin'; 'fourthbin'; 'fifthbin'; 'sixthbin'; 'seventhbin';...
 'eighthbin'; 'ninethbin'; 'tenthbin'; 'eleventhbin'; 'twelvethbin';...
 'thirteenthbin'; 'fourteenthbin'; 'fifteenthbin'; ...
 'sixteenthbin'},exdata2)
% Storing the image names and texture feature vectors in oracle table
% texturefv
exdata3 = {FileName, mean_contrast, mean_correlation,...
 mean_homogeneity, mean_energy};
fastinsert(conn, 'texturefv', {'imagename';'contrast';'correlation';...
 'homogeneity';'energy'}, exdata3);
% Storing the image names and shape feature vector in oracle table shapefv
exdata4 = {FileName, perimeter, area, metric};
fastinsert(conn, 'shapefv', {'imagename';'perimeter';'area';'metric'},...
 exdata4);
exec(conn,'commit');
close (conn);
end


% --- Executes on button press in close2.
function close2_Callback(hObject, eventdata, handles)
% hObject handle to close2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
pos_size = get(handles.figure1,'Position');
user_response = confirm_exit('Title','Confirm close');
switch user_response
 case {'No'}
 % do nothing
 case 'Yes'
 delete(handles.figure1)
end