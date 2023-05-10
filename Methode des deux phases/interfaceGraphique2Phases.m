function varargout = interfaceGraphique2Phases(varargin)
% INTERFACEGRAPHIQUE2PHASES MATLAB code for interfaceGraphique2Phases.fig
%      INTERFACEGRAPHIQUE2PHASES, by itself, creates a new INTERFACEGRAPHIQUE2PHASES or raises the existing
%      singleton*.
%
%      H = INTERFACEGRAPHIQUE2PHASES returns the handle to a new INTERFACEGRAPHIQUE2PHASES or the handle to
%      the existing singleton*.
%
%      INTERFACEGRAPHIQUE2PHASES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACEGRAPHIQUE2PHASES.M with the given input arguments.
%
%      INTERFACEGRAPHIQUE2PHASES('Property','Value',...) creates a new INTERFACEGRAPHIQUE2PHASES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaceGraphique2Phases_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaceGraphique2Phases_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaceGraphique2Phases

% Last Modified by GUIDE v2.5 14-Apr-2023 00:14:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaceGraphique2Phases_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaceGraphique2Phases_OutputFcn, ...
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


% --- Executes just before interfaceGraphique2Phases is made visible.
function interfaceGraphique2Phases_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaceGraphique2Phases (see VARARGIN)

% Choose default command line output for interfaceGraphique2Phases
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaceGraphique2Phases wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaceGraphique2Phases_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);
interfaceGraphique2Phases1;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
backgroundImg = imread('background.png');

% Create a figure and axes to display the image
%figure;
ax = axes('Position',[0 0 1 1]);

% Display the image as the background of the axes
imshow(backgroundImg, 'Parent', ax);

% Set the axis limits to match the size of the image
xlim(ax, [1 size(backgroundImg,2)]);
ylim(ax, [1 size(backgroundImg,1)]);
