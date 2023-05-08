function varargout = interfaceGraphiqueSimplex2(varargin)
% INTERFACEGRAPHIQUESIMPLEX2 MATLAB code for interfaceGraphiqueSimplex2.fig
%      INTERFACEGRAPHIQUESIMPLEX2, by itself, creates a new INTERFACEGRAPHIQUESIMPLEX2 or raises the existing
%      singleton*.
%
%      H = INTERFACEGRAPHIQUESIMPLEX2 returns the handle to a new INTERFACEGRAPHIQUESIMPLEX2 or the handle to
%      the existing singleton*.
%
%      INTERFACEGRAPHIQUESIMPLEX2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACEGRAPHIQUESIMPLEX2.M with the given input arguments.
%
%      INTERFACEGRAPHIQUESIMPLEX2('Property','Value',...) creates a new INTERFACEGRAPHIQUESIMPLEX2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaceGraphiqueSimplex2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaceGraphiqueSimplex2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaceGraphiqueSimplex2

% Last Modified by GUIDE v2.5 13-Apr-2023 23:25:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaceGraphiqueSimplex2_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaceGraphiqueSimplex2_OutputFcn, ...
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


% --- Executes just before interfaceGraphiqueSimplex2 is made visible.
function interfaceGraphiqueSimplex2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaceGraphiqueSimplex2 (see VARARGIN)

% Choose default command line output for interfaceGraphiqueSimplex2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaceGraphiqueSimplex2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaceGraphiqueSimplex2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double
matrixStrA = get(handles.A, 'String');

% Convert the string to a matrix
matrixA = str2num(matrixStrA); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixA)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful
    handles.matrixA = matrixA;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double
matrixStrb = get(handles.b, 'String');

% Convert the string to a matrix
matrixb = str2num(matrixStrb); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixb)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful, do something with the matrix
    handles.matrixb = matrixb;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double
matrixStrf = get(handles.f, 'String');

% Convert the string to a matrix
matrixf = str2num(matrixStrf); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixf)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful, 
    handles.matrixf = matrixf;
    guidata(hObject, handles);
end


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in maximisation.
function maximisation_Callback(hObject, eventdata, handles)
% hObject    handle to maximisation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
matrixA = handles.matrixA;
matrixb = handles.matrixb;
matrixf = handles.matrixf;


% Do something with the matrix
[S,X,fobj] = maximisation(matrixA,matrixb,matrixf);
% Store the variables in the handles structure
handles.S = S;
handles.X = X;
handles.fobj = fobj;

% Update the X_input field with the value of X
set(handles.X_input, 'String', num2str(X));
% Update the X_input field with the value of X
set(handles.fobj_input, 'String', num2str(fobj));
% Update the X_input field with the value of X
set(handles.S_input, 'String', num2str(S));

% Update the handles structure
guidata(hObject, handles);

% --- Executes on button press in minimisation.
function minimisation_Callback(hObject, eventdata, handles)
% hObject    handle to minimisation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
matrixA = handles.matrixA;
matrixb = handles.matrixb;
matrixf = handles.matrixf;

% Do something with the matrix
[S,X,fobj] = minimisation(matrixA,matrixb,matrixf);
% Store the variables in the handles structure
handles.S = S;
handles.X = X;
handles.fobj = fobj;

% Update the X_input field with the value of X
set(handles.X_input, 'String', num2str(X));
% Update the X_input field with the value of X
set(handles.fobj_input, 'String', num2str(fobj));
% Update the X_input field with the value of X
set(handles.S_input, 'String', num2str(S));

% Update the handles structure
guidata(hObject, handles);


function X_input_Callback(hObject, eventdata, handles)
% hObject    handle to X_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X_input as text
%        str2double(get(hObject,'String')) returns contents of X_input as a double
X = str2double(get(hObject,'String'));

% Store the input in the handles structure
handles.X_input = X;
% Display the input in the X_input field
set(hObject, 'String', num2str(X));
% Update the handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function X_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fobj_input_Callback(hObject, eventdata, handles)
% hObject    handle to fobj_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fobj_input as text
%        str2double(get(hObject,'String')) returns contents of fobj_input as a double
fobj = str2double(get(hObject,'String'));

% Store the input in the handles structure
handles.fobj_input = fobj;
% Display the input in the X_input field
set(hObject, 'String', num2str(fobj));
% Update the handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function fobj_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fobj_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S_input_Callback(hObject, eventdata, handles)
% hObject    handle to S_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S_input as text
%        str2double(get(hObject,'String')) returns contents of S_input as a double
S = str2double(get(hObject,'String'));

% Store the input in the handles structure
handles.S_input = S;
% Display the input in the X_input field
set(hObject, 'String', num2str(S));
% Update the handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function S_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
