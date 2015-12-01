.class public Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "com.htc.medialinkhd.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

.field public static final ACTION_DMC_STOP_POSITION:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

.field public static final AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DEVICE_SUBSCRIBE_ERROR:I = -0x141

.field public static final DEVICE_SUBSCRIBE_TIMEOUT:I = -0x142

.field private static final DISCOVER_TIMEOUT:I = 0x2710

.field public static final DLNA_COOKIE_ALBUM:I = 0xbb8

.field public static final DLNA_COOKIE_MEDIAOUTPUT:I = 0xbbb

.field public static final DLNA_COOKIE_MUSIC:I = 0xbb9

.field public static final DLNA_COOKIE_VIDEO:I = 0xbbc

.field public static final DLNA_COOKIE_WATCH:I = 0xbba

.field public static final DMR_MIRROR_DONNOT_GEN_LPCM_URI:I = -0x3e7

.field public static final DMR_MIRROR_OTHERS_USE_DLNA:I = -0x3e6

.field public static final DTCP_FILLBUFFER_EOS:I = -0x1

.field public static final DTCP_FILLBUFFER_ERROR:I = -0x2

.field public static final DTCP_MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/adts"

.field public static final DTCP_MIMETYPE_AUDIO_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static final DTCP_MIMETYPE_AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final DTCP_MIMETYPE_AUDIO_WMA:Ljava/lang/String; = "audio/x-ms-wma"

.field public static final DTCP_MIMETYPE_VIDEO_AVI:Ljava/lang/String; = "video/x-msvideo"

.field public static final DTCP_MIMETYPE_VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final DTCP_MIMETYPE_VIDEO_MPEG:Ljava/lang/String; = "video/mpeg"

.field public static final DTCP_MIMETYPE_VIDEO_WMV:Ljava/lang/String; = "video/x-ms-wmv"

.field public static final ERROR_DEVICE_DTCP_NOTSUPPORT:I = -0x7ed7

.field public static final ERROR_DEVICE_DTCP_NOTSUPPORT_MSG:Ljava/lang/String; = "Device does not support DTCP-IP"

.field public static final ERROR_DEVICE_LOW_STORAGE:I = -0x15e

.field public static final ERROR_DISCOVER_IN_WRONG_STATE:I = -0x7ed4

.field public static final ERROR_DISCOVER_IN_WRONG_STATE_MSG:Ljava/lang/String; = "Discover function is invoked in incorrect state."

.field public static final ERROR_DISCOVER_NO_DEFAULT_RENDERER:I = -0x7ed5

.field public static final ERROR_DISCOVER_NO_DEFAULT_RENDERER_MSG:Ljava/lang/String; = "Discover function is invoked with out available default renderer."

.field public static final ERROR_DISCOVER_NO_DLNA_SERVICE:I = -0x7ed6

.field public static final ERROR_DISCOVER_NO_DLNA_SERVICE_MSG:Ljava/lang/String; = "Discover function is invoked with out available DLNA service."

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final ERROR_SESSION_DESTROYED_DUE_TO_NO_RESOURCE:I = -0x140

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final ITEM_TYPE_AUDIO:I = 0x1

.field public static final ITEM_TYPE_FOLDER:I = 0x0

.field public static final ITEM_TYPE_IMAGE:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field public static final ITEM_TYPE_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field public static final KEY_ERRORID:Ljava/lang/String; = "error_id"

.field public static final KEY_ERRORMSG:Ljava/lang/String; = "error_message"

.field public static final KEY_MEDIA:Ljava/lang/String; = "media"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"

.field public static final KEY_SUBTITLE_FILE_PATH:Ljava/lang/String; = "SubtitleFilePath"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager "

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field private static final NOREPEAT:I = 0x0

.field public static final NO_REPEAT:I = 0x0

.field private static final PHOTO_SLIDESHOW_START:I = 0x0

.field private static final PHOTO_SLIDESHOW_STOP:I = 0x1

.field private static final REPEATALL:I = 0x1

.field private static final REPEATONE:I = 0x2

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final RESPON_SEEK_ERROR:I = -0x144

.field public static final RESPON_SETAVTRANSPORTURI_ERROR:I = -0x142

.field public static final RESPON_SETAVTRANSPORTURI_SUCCESS:I = -0x141

.field public static final RESPON_SETAVTRANSPORTURI_TIMEOUT:I = -0x143

.field public static final RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP:I = -0x3f1

.field public static final RETURN_CODE_GENERAL_ERROR:I = -0x3ee

.field public static final RETURN_CODE_INVALID_ARGUMENT:I = -0x3ea

.field public static final RETURN_CODE_INVALID_RENDERERID:I = -0x3f0

.field public static final RETURN_CODE_LISTENER_NOT_READY:I = -0x3ec

.field public static final RETURN_CODE_NO_VALID_SESSION_COOKIE:I = -0x3ef

.field public static final RETURN_CODE_OK:I = -0x3e8

.field public static final RETURN_CODE_RENDERER_NOT_READY:I = -0x3eb

.field public static final RETURN_CODE_SAME_RENDERER_ALREADY_EXIST:I = -0x3ed

.field public static final RETURN_CODE_WRONG_STATE:I = -0x3e9

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.DLNAService"

.field private static final SRV_DTCP:Ljava/lang/String; = "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_DISCONNECTED:I = 0x9

.field public static final STATE_END:I = 0xa

.field public static final STATE_IDLE:I = 0x8

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x0

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TRANSITIONING:I = 0x5

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private final CLASS_DONGLEINFO:Ljava/lang/String;

.field private final SEEK_THREADHOLD:I

.field private bDTCPGetURI:Z

.field private bIsDTCPPlayEnd:Z

.field private bIsDTCPSupport:Z

.field private bIsDTCPURINext:Z

.field private isDTCPIPContent:Z

.field private mClientSeekTo:I

.field private mContext:Landroid/content/Context;

.field private mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:I

.field private mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private final mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

.field private mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

.field private mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

.field private mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

.field private final mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

.field private mDTCPServiceConnection:Landroid/content/ServiceConnection;

.field private mFilter:I

.field private final mHandler:Landroid/os/Handler;

.field private mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

.field private mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

.field private final mMiddleLayerListenerLockObject:Ljava/lang/Object;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private final mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field private mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

.field private mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field private mServerID:Ljava/lang/String;

.field private mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mState:Ljava/lang/Integer;

.field private mUriDefRendererGetter:Landroid/net/Uri;

.field private final mUriDefRendererSaver:Landroid/net/Uri;

.field private mUriRendererGetter:Landroid/net/Uri;

.field private final mUriRendererSaver:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const-string v1, "com.htc.service.DongleInfo"

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->CLASS_DONGLEINFO:Ljava/lang/String;

    .line 766
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 1208
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 1209
    iput v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 1210
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 1211
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 1212
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 1213
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 1214
    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1216
    iput v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 1217
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 1218
    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 1219
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 1221
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 1222
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1223
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 1224
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1226
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 1227
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 1229
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;

    invoke-direct {v1, p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1232
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    .line 1233
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 1235
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1238
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    .line 1239
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 1241
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 1242
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 1243
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    .line 1244
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    .line 1245
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 1246
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 1247
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 1249
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    .line 1287
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 1288
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 1340
    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1773
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$2;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1845
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 1847
    iput p2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1851
    iput p3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1852
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1853
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1854
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 1856
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object p1
.end method

.method private static addConnectedCookieInProvider(Landroid/content/Context;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1980
    if-nez p0, :cond_0

    .line 1995
    :goto_0
    return v0

    .line 1983
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1984
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1985
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[addConnectedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1990
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1993
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static addGeneratedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1917
    if-nez p0, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return v0

    .line 1919
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1922
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    if-eqz v1, :cond_0

    .line 1928
    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static autoLog()V
    .locals 1

    .prologue
    .line 6058
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 6059
    return-void
.end method

.method private static autoLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 6067
    const-string v1, "HtcDLNAServiceManager "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Line: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6070
    return-void

    .line 6067
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkCookieValue(I)Z
    .locals 1

    .prologue
    .line 2053
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 2054
    :cond_0
    const/4 v0, 0x0

    .line 2057
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanDataMember()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2534
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 2535
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2536
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 2537
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2538
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 2539
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 2540
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    .line 2541
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2542
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    .line 2543
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2544
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    .line 2545
    return-void
.end method

.method private connectDTCPServer(Z)V
    .locals 4

    .prologue
    .line 2238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 2239
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 2240
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v0, :cond_0

    .line 2241
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "DTCP Service started!!"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    :goto_0
    return-void

    .line 2244
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "startService(SRV_DTCP)"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2246
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;

    invoke-direct {v0, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 2276
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "bindService(SRV_DTCP)"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2862
    .line 2864
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->getInternalDLNAStatusBarData()Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)I

    move-result v2

    .line 2867
    :goto_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRenderer] createMediaController result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRendererId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 2870
    if-nez v2, :cond_2

    .line 2872
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRenderer] Set renderer faild with renderer ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    const/16 v0, -0x3ee

    .line 2910
    :goto_1
    return v0

    .line 2865
    :cond_1
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)I

    move-result v2

    goto :goto_0

    .line 2876
    :cond_2
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;

    move-result-object v3

    .line 2877
    if-eqz v3, :cond_5

    .line 2878
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v4

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1902(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2879
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v4

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z
    invoke-static {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2002(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z

    .line 2880
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v4

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2102(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2881
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2202(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2882
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2302(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2884
    const-string v0, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRenderer] Get current DMR init state( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) and set to DLNAManager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v0

    .line 2886
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 2888
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v4

    if-ne v4, v1, :cond_4

    .line 2889
    const-string v1, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRenderer]  setState( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2893
    :cond_4
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    .line 2894
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->refreshRendererList()V

    .line 2895
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRenderer] Same renderer id already exists in DLNA Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2897
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v1

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J
    invoke-static {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2402(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v1

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J
    invoke-static {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2502(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J

    .line 2901
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    const/16 v1, -0x145

    const-string v2, "Device subscribe success response"

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2910
    :cond_5
    :goto_2
    const/16 v0, -0x3e8

    goto/16 :goto_1

    .line 2905
    :catch_0
    move-exception v0

    .line 2907
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private disconnectDTCPServer(Z)V
    .locals 2

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-nez v0, :cond_0

    .line 2298
    :goto_0
    return-void

    .line 2286
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 2289
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v0}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->stopDTCPServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2295
    :goto_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    .line 2290
    :catch_0
    move-exception v0

    .line 2292
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generateNewSessionCookie()I
    .locals 1

    .prologue
    .line 1870
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1872
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static generateNewSessionCookie(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1888
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1889
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1892
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1897
    return v0
.end method

.method private static getConnectedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2001
    if-nez p0, :cond_0

    const-string v0, ""

    .line 2008
    :goto_0
    return-object v0

    .line 2003
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 5941
    if-nez p0, :cond_1

    .line 5955
    :cond_0
    :goto_0
    return-object v0

    .line 5944
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 5948
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentPlayingFilePath]: content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5952
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    .line 5953
    goto :goto_0
.end method

.method public static getDMRMirrorRendererID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6235
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->getDMRMirrorOnRendererID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDMRMirrorState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6245
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->getDMRMirrorState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1934
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1941
    :goto_0
    return-object v0

    .line 1936
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1939
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3824
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 3825
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3827
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3828
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3830
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRenderer(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3897
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 3899
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRenderer]: cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3901
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3904
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceControlStatus()Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;
    .locals 4

    .prologue
    .line 3940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3941
    const/4 v0, 0x0

    .line 3945
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getDLNAControllerStatus(Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3951
    :goto_0
    return-object v0

    .line 3946
    :catch_0
    move-exception v1

    .line 3948
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSlideShowStatus()I
    .locals 4

    .prologue
    .line 4592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4593
    const/4 v0, 0x1

    .line 4594
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 4605
    :cond_0
    :goto_0
    return v0

    .line 4599
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4604
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSlideShowStatus] result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4600
    :catch_0
    move-exception v1

    .line 4602
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private initMiddleLayerListener()V
    .locals 2

    .prologue
    .line 2577
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2578
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 2580
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2582
    :cond_0
    monitor-exit v1

    .line 2583
    return-void

    .line 2582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isCookieValid(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 2037
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 2044
    const/4 v0, 0x1

    return v0
.end method

.method public static isFilePlaying(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5913
    if-nez p2, :cond_1

    .line 5924
    :cond_0
    :goto_0
    return v0

    .line 5915
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 5916
    if-eqz v1, :cond_0

    .line 5918
    const-string v2, "utf-8"

    invoke-static {p2, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 5919
    :catch_0
    move-exception v1

    .line 5921
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3262
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3263
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3265
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3266
    const/4 v0, 0x1

    .line 3268
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isPreviousStopAndResetDone(I)Z
    .locals 1

    .prologue
    .line 2428
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 2430
    const/4 v0, 0x1

    return v0
.end method

.method private isValidState(I)Z
    .locals 3

    .prologue
    .line 6031
    packed-switch p1, :pswitch_data_0

    .line 6046
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6047
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6042
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private lockCommand(I)V
    .locals 4

    .prologue
    .line 5800
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[lockCommand]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5801
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5803
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5807
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5809
    :goto_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[lockCommand][OUT]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5810
    return-void

    .line 5804
    :catch_0
    move-exception v0

    .line 5805
    :try_start_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[lockCommand][InterruptedException]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5807
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static moveGeneratedCookieToRemovedCookieInProvider(Landroid/content/Context;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1946
    if-nez p0, :cond_0

    .line 1974
    :goto_0
    return v0

    .line 1949
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1950
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1951
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[moveGeneratedCookieToRemovedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1957
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1959
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1965
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private static removeConnectedCookieInProvider(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    .line 2014
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2021
    :goto_0
    return v0

    .line 2016
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2019
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private saveRenderer()Z
    .locals 2

    .prologue
    .line 3836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3837
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveRenderer(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3848
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3849
    :cond_0
    const/4 v0, 0x0

    .line 3853
    :goto_0
    return v0

    .line 3851
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3852
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveRenderer]: content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5573
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 5574
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 5575
    monitor-exit v1

    .line 5582
    :goto_0
    return v5

    .line 5576
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 5577
    if-eqz v0, :cond_1

    .line 5578
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendErrorMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5579
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 5582
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 5583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5601
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 5602
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 5603
    monitor-exit v1

    .line 5610
    :goto_0
    return v5

    .line 5604
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 5605
    if-eqz v0, :cond_1

    .line 5606
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendResponseMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5607
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 5610
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 5611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDMCInTheForeground(Landroid/content/Context;IZ)Z
    .locals 2

    .prologue
    .line 6280
    const-string v0, "content://dlna/dmr_func_set_dmc_in_the_foreground?cookie="

    .line 6281
    if-eqz p0, :cond_0

    .line 6282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_set_dmc_in_the_foreground?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dmcfg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 6284
    if-eqz v0, :cond_0

    .line 6285
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6289
    :goto_0
    return v0

    .line 6288
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "setDMCInTheForeground context is null"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    .line 5813
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5814
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5816
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5818
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5820
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5821
    return-void

    .line 5818
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updatePlayingPosition()V
    .locals 5

    .prologue
    .line 4473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v0

    .line 4475
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 4476
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 4477
    :try_start_0
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_0

    .line 4478
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v2

    .line 4479
    if-eqz v2, :cond_0

    .line 4480
    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    .line 4482
    :cond_0
    monitor-exit v1

    .line 4483
    return-void

    .line 4482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5227
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "albumArtDownload : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5237
    :goto_0
    return-void

    .line 5232
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5233
    :catch_0
    move-exception v0

    .line 5235
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public albumArtDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5250
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "albumArtDownload : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5261
    :goto_0
    return-void

    .line 5255
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[albumArtDownload] : serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5256
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5257
    :catch_0
    move-exception v0

    .line 5259
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 9

    .prologue
    .line 5072
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5073
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browse : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    :goto_0
    return-void

    .line 5078
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5079
    :catch_0
    move-exception v0

    .line 5081
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browse(Ljava/lang/String;Ljava/lang/String;JIJ)V
    .locals 11

    .prologue
    .line 5099
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5100
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "browse : invalid mService"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    :goto_0
    return-void

    .line 5105
    :cond_0
    :try_start_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[browse] serverID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", containerID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", boundary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-interface/range {v2 .. v10}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5107
    :catch_0
    move-exception v2

    .line 5109
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 5154
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5155
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5165
    :goto_0
    return-void

    .line 5160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5161
    :catch_0
    move-exception v0

    .line 5163
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5178
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    :goto_0
    return-void

    .line 5183
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[browseCancel] : serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", containerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5184
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5185
    :catch_0
    move-exception v0

    .line 5187
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(I)V
    .locals 3

    .prologue
    .line 4995
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4996
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "cancelContentThumbnail : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5007
    :goto_0
    return-void

    .line 5001
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cancelContentThumbnail] groupID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5002
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5003
    :catch_0
    move-exception v0

    .line 5005
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(II)V
    .locals 2

    .prologue
    .line 4974
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4975
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "cancelContentThumbnail : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4985
    :goto_0
    return-void

    .line 4980
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4981
    :catch_0
    move-exception v0

    .line 4983
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkErrorExists()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5435
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 5438
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkErrorExists] error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5453
    :goto_0
    return v0

    .line 5443
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5444
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[checkErrorExists] No error exists."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5447
    :catch_0
    move-exception v0

    .line 5449
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5452
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[checkErrorExists] Error exists."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5453
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v0, -0x3e8

    .line 2595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2597
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 2598
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[connect] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    const/16 v0, -0x3e9

    .line 2630
    :cond_0
    :goto_0
    return v0

    .line 2602
    :cond_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-nez v1, :cond_2

    .line 2603
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[connect] please set DLNAServiceStatusListener before connect()."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    const/16 v0, -0x3ec

    goto :goto_0

    .line 2607
    :cond_2
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_3

    .line 2609
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v1, :cond_0

    .line 2610
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2611
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    goto :goto_0

    .line 2616
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "Request connect service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2620
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.htcdlnamiddlelayer.DLNAService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2621
    const-string v2, "binder_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2622
    const-string v2, "com.htc.htcdlnamiddlelayer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2623
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2625
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2628
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    goto :goto_0
.end method

.method public continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    .locals 10

    .prologue
    .line 5130
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5131
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "continueBrowseDown : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5141
    :goto_0
    return-void

    .line 5136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5137
    :catch_0
    move-exception v0

    .line 5139
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5

    .prologue
    const/16 v2, 0x9

    const/4 v4, 0x0

    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2751
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return-void

    .line 2754
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "Request disconnect service"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2760
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    if-eqz v0, :cond_2

    .line 2761
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->cancelTimer()V

    .line 2766
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_4

    .line 2768
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v0, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2769
    :cond_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    .line 2770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2772
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2774
    :try_start_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2775
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2788
    :goto_1
    iput-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2790
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2791
    :try_start_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2792
    if-eqz v0, :cond_5

    .line 2793
    invoke-interface {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2796
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2798
    iput-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    goto :goto_0

    .line 2772
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2779
    :catch_0
    move-exception v0

    .line 2780
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2777
    :cond_6
    :try_start_6
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "disconnect(), mContext or its ApplicationContext is null"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 2796
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public dtcpFillBuffer(JI[B)I
    .locals 2

    .prologue
    .line 3357
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "mDTCPService.FillBuffer"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3358
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v0, :cond_0

    .line 3359
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->FillBuffer(JI[B)V

    .line 3368
    :goto_0
    const/16 v0, -0x3e8

    :goto_1
    return v0

    .line 3361
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "mDTCPService.FillBuffer, DTCPService == null"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3363
    :catch_0
    move-exception v0

    .line 3365
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3366
    const/16 v0, -0x3e9

    goto :goto_1
.end method

.method public dtcpSetAVTransportPushBufferURI(Ljava/lang/String;J)I
    .locals 4

    .prologue
    const/16 v0, -0x3e9

    .line 3425
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "dtcpSetAVTransportPushBufferURI()"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v1, :cond_0

    .line 3428
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    const/16 v0, -0x3f1

    .line 3461
    :goto_0
    return v0

    .line 3431
    :cond_0
    if-nez p1, :cond_1

    .line 3432
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3436
    :cond_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 3437
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3441
    :cond_3
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 3442
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dtcpSetAVTransportPushBufferURI] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3446
    :cond_5
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    if-nez v1, :cond_6

    .line 3447
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[dtcpSetAVTransportPushBufferURI] mDTCPFillBufferCallback == null RETURN_CODE_WRONG_STATE"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3451
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3453
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    .line 3455
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3456
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    .line 3457
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setTotalFileSize(J)V

    .line 3459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3461
    const/16 v0, -0x3e8

    goto/16 :goto_0
.end method

.method public dtcpSetAVTransportURI(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3381
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "dtcpSetAVTransportURI()"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 3384
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v0, :cond_0

    .line 3385
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    const/16 v0, -0x3f1

    .line 3411
    :goto_0
    return v0

    .line 3388
    :cond_0
    if-nez p1, :cond_1

    .line 3389
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3393
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_3

    .line 3394
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3398
    :cond_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 3399
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dtcpSetAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3403
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3405
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    .line 3407
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3409
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3411
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public dtcpSetPushBufferCB(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;)V
    .locals 0

    .prologue
    .line 3473
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 3474
    return-void
.end method

.method public findUsableRenderer(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2946
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2947
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    :cond_0
    :goto_0
    return v0

    .line 2952
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2953
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2954
    goto :goto_0

    .line 2956
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2957
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2958
    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4763
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 4774
    :cond_0
    :goto_0
    return-object v0

    .line 4768
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 4769
    :catch_0
    move-exception v1

    .line 4771
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4740
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 4751
    :cond_0
    :goto_0
    return-object v0

    .line 4745
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 4746
    :catch_0
    move-exception v1

    .line 4748
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 5020
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5021
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getContentThumbnail : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5031
    :goto_0
    return-void

    .line 5026
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5027
    :catch_0
    move-exception v0

    .line 5029
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentThumbnail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 5043
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5044
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getContentThumbnail : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5055
    :goto_0
    return-void

    .line 5049
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getContentThumbnail] serverID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groupID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5050
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5051
    :catch_0
    move-exception v0

    .line 5053
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 4617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4618
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4660
    :cond_0
    :goto_0
    return v1

    .line 4621
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 4622
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4623
    const/16 v1, -0x3e9

    goto :goto_0

    .line 4626
    :cond_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 4629
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto/16 :goto_0

    .line 4638
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v0, v2

    .line 4644
    :goto_1
    if-gez v0, :cond_7

    .line 4646
    const/4 v0, 0x1

    .line 4650
    :goto_2
    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getDuration()I

    move-result v2

    if-le v2, v4, :cond_5

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_5

    .line 4651
    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v4, :cond_5

    .line 4652
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[getCurrentPosition] return mClientSeekTo since distance between updated and current position is in SEEK_THREADHOLD"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    goto/16 :goto_0

    .line 4639
    :catch_0
    move-exception v0

    .line 4641
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    .line 4656
    :cond_5
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 4658
    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 4659
    const-string v0, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentPosition] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4658
    :cond_6
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto :goto_3

    :cond_7
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2
.end method

.method public getCurrentSessionCookie()I
    .locals 2

    .prologue
    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2071
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDMCControlItemInfo(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 5318
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5319
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getDMCControlItemInfo : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5329
    :goto_0
    return-void

    .line 5324
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5325
    :catch_0
    move-exception v0

    .line 5327
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 4539
    const/4 v0, -0x1

    .line 4541
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4542
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMCCurrentLocalPlayIndex : invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4553
    :goto_0
    return v0

    .line 4547
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4548
    :catch_0
    move-exception v1

    .line 4550
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 4697
    const/4 v0, 0x1

    .line 4698
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4699
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMCVolumeControlSupport : invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    :goto_0
    return v0

    .line 4704
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4705
    :catch_0
    move-exception v1

    .line 4707
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5273
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5274
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getDMPContentItemDetails : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5284
    :goto_0
    return-void

    .line 5279
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5280
    :catch_0
    move-exception v0

    .line 5282
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMPContentItemDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 5295
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5296
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getDMPContentItemDetails : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5307
    :goto_0
    return-void

    .line 5301
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDMPContentItemDetails] : serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5303
    :catch_0
    move-exception v0

    .line 5305
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5851
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[getDefaultRenderer]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5852
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 4673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4674
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4675
    :cond_0
    const/4 v0, 0x0

    .line 4683
    :goto_0
    return v0

    .line 4677
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4679
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getPlayingPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0

    .line 4683
    :cond_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getErrorId()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5497
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 5498
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5520
    :goto_0
    return v0

    .line 5503
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5504
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[getErrorReason] NoError"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5507
    :catch_0
    move-exception v1

    .line 5509
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5514
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorId(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 5519
    :goto_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorId] error ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5515
    :catch_1
    move-exception v1

    .line 5517
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5534
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5535
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error state for getErrorReason(), current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5557
    :goto_0
    return-object v0

    .line 5540
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5541
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[getErrorReason] NoError "

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5542
    const-string v0, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5544
    :catch_0
    move-exception v0

    .line 5546
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5549
    :cond_2
    const-string v0, ""

    .line 5551
    :try_start_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 5556
    :goto_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorReason] error ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5552
    :catch_1
    move-exception v1

    .line 5554
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorRendererID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5467
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5468
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getErrorRendererID] error state for getErrorReason(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error state for getErrorRendererID(), current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5483
    :goto_0
    return-object v0

    .line 5473
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5474
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[getErrorRendererID] NoError "

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5475
    const-string v0, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5477
    :catch_0
    move-exception v0

    .line 5479
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5482
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getErrorRendererID] error Renderer ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    .line 5796
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getHtcDLNARendererDiscoverer()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method public getItemDetails()Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4787
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[getItemDetails]"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 4792
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getItemDetails] error state for getItemDetails(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4818
    :cond_1
    :goto_0
    return-object v0

    .line 4796
    :cond_2
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_1

    .line 4803
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getDLNAContentItemDetails(Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 4804
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4805
    :try_start_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v1, :cond_3

    .line 4806
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v1

    .line 4807
    if-eqz v1, :cond_3

    .line 4809
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;)V

    .line 4812
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4813
    :catch_0
    move-exception v1

    .line 4815
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5875
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 5876
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRenderer] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5892
    :cond_1
    :goto_0
    return-object v1

    .line 5884
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getDLNARendererData(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5890
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5892
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5885
    :catch_0
    move-exception v0

    .line 5887
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public getPlayingIndex()J
    .locals 5

    .prologue
    .line 4566
    const-wide/16 v0, -0x1

    .line 4567
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4579
    :cond_0
    :goto_0
    return-wide v0

    .line 4571
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 4577
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getPlayingIndex] index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4572
    :catch_0
    move-exception v2

    .line 4574
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlaylistSize()J
    .locals 5

    .prologue
    .line 4512
    const-wide/16 v0, -0x1

    .line 4513
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4525
    :cond_0
    :goto_0
    return-wide v0

    .line 4517
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 4523
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getPlaylistSize] total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4518
    :catch_0
    move-exception v2

    .line 4520
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3866
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 3867
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRenderer] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3879
    :cond_1
    :goto_0
    return-object v0

    .line 3871
    :cond_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3872
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0

    .line 3874
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRenderer]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3875
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3876
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move-object v0, v1

    .line 3879
    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3919
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 3935
    :goto_0
    return-object v0

    .line 3927
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getDLNARendererData(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3933
    :goto_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRendererData] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3928
    :catch_0
    move-exception v1

    .line 3930
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 2

    .prologue
    .line 4350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo.Repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4351
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    return v0
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4931
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getServerThumbnail : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4941
    :goto_0
    return-void

    .line 4936
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4937
    :catch_0
    move-exception v0

    .line 4939
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServerThumbnail(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4951
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4952
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "getServerThumbnail : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4963
    :goto_0
    return-void

    .line 4957
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getServerThumbnail] serverID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4958
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4959
    :catch_0
    move-exception v0

    .line 4961
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 4496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4498
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getState] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4499
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStateNameByStateCode(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5998
    packed-switch p1, :pswitch_data_0

    .line 6018
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6001
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PLAYING ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6003
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_STOPPED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6005
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PAUSED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6007
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_TRANSITIONING ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6009
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_NO_MEDIA ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6011
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_IDLE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6013
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_DISCONNECTED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6015
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_END ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getVolume()I
    .locals 3

    .prologue
    .line 4405
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4406
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVolume] error state for setVolume(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    const/16 v0, -0x3e9

    .line 4411
    :goto_0
    return v0

    .line 4410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4411
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5202
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5203
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "imageDownload : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5213
    :goto_0
    return-void

    .line 5208
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5209
    :catch_0
    move-exception v0

    .line 5211
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4881
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4882
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "isBrowsingCmdDone: invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4891
    :goto_0
    return v0

    .line 4887
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4888
    :catch_0
    move-exception v1

    .line 4890
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isBrowsingCmdDone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4906
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4907
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "isBrowsingCmdDone: invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4917
    :goto_0
    return v0

    .line 4912
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isBrowsingCmdDone] serverID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4913
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4914
    :catch_0
    move-exception v1

    .line 4916
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDTCPSupport()Z
    .locals 2

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dlna/device_func_get_dtcp_support?cookie=0"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3338
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    const/4 v0, 0x1

    .line 3341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDTCPSupport(JI[B)Z
    .locals 1

    .prologue
    .line 3325
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v0

    return v0
.end method

.method public isFilterTypeSupported(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 6257
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererData(Ljava/lang/String;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;

    move-result-object v0

    .line 6258
    if-eqz v0, :cond_0

    .line 6259
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getFilterType()I

    move-result v0

    .line 6260
    invoke-static {p2, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->compareFilterTypeSupport(II)Z

    move-result v0

    .line 6265
    :goto_0
    return v0

    .line 6262
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[isFilterTypeSupported] rendererData is null"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6265
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPCMStreaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6213
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 6225
    :goto_0
    return v0

    .line 6220
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isPCMStreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 6221
    :catch_0
    move-exception v1

    .line 6222
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4724
    iget-boolean v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_2

    .line 4725
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getSlideShowStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 4728
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4725
    goto :goto_0

    .line 4727
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    .line 4728
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5361
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5362
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "isShuffleEnabled : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5375
    :goto_0
    return v0

    .line 5369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isShuffleEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 5370
    :catch_0
    move-exception v1

    .line 5372
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()I
    .locals 3

    .prologue
    .line 4086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4087
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4088
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[pause], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    const/16 v0, -0x3eb

    .line 4105
    :goto_0
    return v0

    .line 4092
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4093
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] error state for pause(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    const/16 v0, -0x3e9

    goto :goto_0

    .line 4097
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[pause] Request pause"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4105
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4100
    :catch_0
    move-exception v0

    .line 4102
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play()I
    .locals 3

    .prologue
    .line 3968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3969
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 3970
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    const/16 v0, -0x3eb

    .line 3991
    :goto_0
    return v0

    .line 3974
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 3975
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error state for play(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3979
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    if-eqz v0, :cond_3

    .line 3980
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3983
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[play] Request play"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3991
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 3986
    :catch_0
    move-exception v0

    .line 3988
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play(J)I
    .locals 3

    .prologue
    .line 4011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4013
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4014
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    const/16 v0, -0x3eb

    .line 4032
    :goto_0
    return v0

    .line 4018
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 4019
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error state for play(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    const/16 v0, -0x3e9

    goto :goto_0

    .line 4023
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4027
    :catch_0
    move-exception v0

    .line 4029
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 4052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4054
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4055
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    const/16 v0, -0x3eb

    .line 4073
    :goto_0
    return v0

    .line 4059
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 4060
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error state for play(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    const/16 v0, -0x3e9

    goto :goto_0

    .line 4064
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4073
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4068
    :catch_0
    move-exception v0

    .line 4070
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playNext()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4257
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4258
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[playNext] null == mService || !mRendererCreated"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    const/16 v0, -0x3eb

    .line 4298
    :goto_0
    return v0

    .line 4262
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 4266
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playNext] error status for playNext(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4267
    const/16 v0, -0x3e9

    goto :goto_0

    .line 4270
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[playNext] Request next"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 4276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 4298
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4281
    :cond_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 4283
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4284
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_4

    .line 4285
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4286
    if-eqz v0, :cond_4

    .line 4287
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    .line 4288
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[playNext] force onPlayStateChanged(STATE_PAUSED)"

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4291
    :cond_4
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4293
    :catch_0
    move-exception v0

    .line 4295
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playPrevious()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4203
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4204
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[playPrevious] null == mService || !mRendererCreated"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    const/16 v0, -0x3eb

    .line 4243
    :goto_0
    return v0

    .line 4208
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 4212
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playPrevious] error status for playPrevious(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4213
    const/16 v0, -0x3e9

    goto :goto_0

    .line 4216
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[playPrevious] Request previous"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 4222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 4243
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4226
    :cond_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 4228
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4229
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_4

    .line 4230
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4231
    if-eqz v0, :cond_4

    .line 4232
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    .line 4233
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] force onPlayStateChanged(STATE_PAUSED)"

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    :cond_4
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4238
    :catch_0
    move-exception v0

    .line 4240
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    .locals 3

    .prologue
    .line 2560
    const/4 v0, 0x0

    .line 2561
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 2562
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "reArrangePushPlaylist : invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    :goto_0
    return v0

    .line 2567
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2568
    :catch_0
    move-exception v1

    .line 2570
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshRendererList()V
    .locals 2

    .prologue
    .line 4831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4832
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4843
    :goto_0
    return-void

    .line 4837
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4838
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4839
    :catch_0
    move-exception v0

    .line 4841
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshServerList()V
    .locals 2

    .prologue
    .line 4855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4856
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4867
    :goto_0
    return-void

    .line 4861
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4862
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4863
    :catch_0
    move-exception v0

    .line 4865
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[release] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    .line 2530
    :goto_0
    return v0

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2469
    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2472
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    if-eqz v0, :cond_1

    .line 2473
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->cancelTimer()V

    .line 2477
    :cond_1
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 2479
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_3

    .line 2480
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v0, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2481
    :cond_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2487
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2492
    const/16 v0, 0x8

    if-eq v1, v0, :cond_5

    .line 2495
    :try_start_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2498
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_4

    .line 2499
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2501
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2504
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2511
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2525
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[release] unbindService."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    :cond_6
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->cleanDataMember()V

    .line 2530
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 2483
    :catch_0
    move-exception v0

    .line 2485
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2487
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2500
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2512
    :catch_1
    move-exception v0

    .line 2514
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public reset()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2321
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 2322
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reset] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const/16 v0, -0x3e9

    .line 2342
    :goto_0
    return v0

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2327
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2331
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reset] call mService.destroyMediaController(mCookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2333
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2342
    const/16 v0, -0x3e8

    goto :goto_0

    .line 2334
    :catch_0
    move-exception v0

    .line 2336
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0

    .prologue
    .line 5862
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 5833
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveDefaultRenderer] string:content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5834
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 5835
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveDefaultRenderer] mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5836
    const/4 v0, 0x0

    .line 5840
    :goto_0
    return v0

    .line 5839
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5840
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public seekTo(I)I
    .locals 5

    .prologue
    .line 4312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4314
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4315
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] error state for seekTo(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    const/16 v0, -0x3e9

    .line 4338
    :goto_0
    return v0

    .line 4319
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_2

    .line 4320
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[seekTo], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4321
    const/16 v0, -0x3eb

    goto :goto_0

    .line 4324
    :cond_2
    if-gez p1, :cond_3

    .line 4325
    const/4 p1, 0x0

    .line 4327
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] Request seekTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4330
    :try_start_0
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 4332
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4338
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4333
    :catch_0
    move-exception v0

    .line 4335
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAVTransportURI(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v0, -0x3ea

    .line 3622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3624
    if-nez p1, :cond_0

    .line 3625
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    :goto_0
    return v0

    .line 3629
    :cond_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3630
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3631
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3634
    :cond_2
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 3635
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3636
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3639
    :cond_4
    invoke-direct {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3640
    iput-boolean v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3642
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAVTransportURI] path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    :try_start_0
    const-string v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3646
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "Not support rtsp streaming."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3657
    :catch_0
    move-exception v0

    .line 3659
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3662
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 3650
    :cond_5
    :try_start_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3651
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3652
    :cond_6
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3653
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3655
    :cond_7
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAutoReleaseAfterPlayCompleted(Z)I
    .locals 3

    .prologue
    .line 5973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5975
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5976
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAutoReleaseAfterPlayCompleted] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5977
    const/16 v0, -0x3e9

    .line 5987
    :goto_0
    return v0

    .line 5981
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setAutoReleaseAfterPlayCompleted(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5982
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, -0x3e8

    goto :goto_0

    .line 5983
    :catch_0
    move-exception v0

    .line 5985
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5987
    :cond_2
    const/16 v0, -0x3ee

    goto :goto_0
.end method

.method public setBrowseThumbSize(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5685
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5686
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setBrowseThumbSize invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5695
    :goto_0
    return v0

    .line 5691
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setBrowseThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 5692
    :catch_0
    move-exception v1

    .line 5694
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setClientSeekTo(I)V
    .locals 0

    .prologue
    .line 2082
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 2083
    return-void
.end method

.method public setControllerStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;)I
    .locals 3

    .prologue
    .line 2198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2201
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setControllerStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const/16 v0, -0x3e9

    .line 2210
    :goto_0
    return v0

    .line 2204
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2205
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2206
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 2207
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAControllerStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;)V

    .line 2209
    :cond_1
    monitor-exit v1

    .line 2210
    const/16 v0, -0x3e8

    goto :goto_0

    .line 2209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDLNAServiceStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I
    .locals 3

    .prologue
    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2228
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDLNAServiceStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const/16 v0, -0x3e9

    .line 2233
    :goto_0
    return v0

    .line 2232
    :cond_0
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2233
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setDMCThumbSize(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5641
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5642
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setDMCThumbSize invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5651
    :goto_0
    return v0

    .line 5647
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 5648
    :catch_0
    move-exception v1

    .line 5650
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMPAlbumArtSize(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5663
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5664
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setDMPAlbumArtSize invalid service"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5673
    :goto_0
    return v0

    .line 5669
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMPAlbumArtSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 5670
    :catch_0
    move-exception v1

    .line 5672
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMRMirrorOutputCallback(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;)V
    .locals 3

    .prologue
    .line 6124
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    .line 6126
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 6127
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 6128
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_0

    .line 6129
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    invoke-virtual {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->setDMRMirrorOutputCallback(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;)V

    .line 6131
    :cond_0
    monitor-exit v1

    .line 6132
    return-void

    .line 6131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDTCPIPDataSource(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 4

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3597
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3592
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getInternalDLNAPushMediaInfo()Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3593
    :catch_0
    move-exception v0

    .line 3595
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)I
    .locals 8

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3768
    :cond_0
    const/16 v0, -0x3ea

    .line 3780
    :goto_0
    return v0

    .line 3769
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3770
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] pushList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3774
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3780
    :goto_2
    const/16 v0, -0x3e8

    goto :goto_0

    .line 3774
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 3775
    :catch_0
    move-exception v0

    .line 3777
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setDataSource(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 6

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3737
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3725
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] MediaFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3733
    :catch_0
    move-exception v0

    .line 3735
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3732
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getInternalDLNAPushMediaInfo()Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3540
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3557
    :cond_0
    :goto_0
    return-void

    .line 3543
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    invoke-direct {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3546
    iput-boolean v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3550
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3552
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getInternalDLNARemotePlaylistInfo()Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3553
    :catch_0
    move-exception v0

    .line 3555
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3499
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3516
    :cond_0
    :goto_0
    return-void

    .line 3505
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3506
    iput-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3510
    :try_start_0
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3511
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3512
    :catch_0
    move-exception v0

    .line 3514
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaTypeFiler(I)I
    .locals 3

    .prologue
    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2131
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const/16 v0, -0x3e9

    .line 2136
    :goto_0
    return v0

    .line 2134
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 2136
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 5625
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    .line 5626
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5631
    :cond_0
    :goto_0
    return-void

    .line 5627
    :catch_0
    move-exception v0

    .line 5629
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)I
    .locals 4

    .prologue
    const/16 v0, -0x3ee

    .line 2821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2824
    if-nez p1, :cond_1

    const/16 v0, -0x3ea

    .line 2855
    :cond_0
    :goto_0
    return v0

    .line 2826
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRenderer] renderId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 2829
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRenderer] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2833
    :cond_3
    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-direct {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->checkCookieValue(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 2834
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setRenderer] Please set valid session cookie first."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const/16 v0, -0x3ef

    goto :goto_0

    .line 2841
    :cond_4
    :try_start_0
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 2842
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 2843
    if-eq v1, v0, :cond_0

    .line 2845
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2847
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->saveRenderer()Z

    .line 2849
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2855
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 2850
    :catch_0
    move-exception v0

    .line 2852
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3203
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3204
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dont start discover, just send discover timeout error to AP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    :goto_0
    return v0

    .line 3209
    :cond_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_1

    .line 3210
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setRendererAsReadyDongle] error: mService is null!!, dont start discover, just send discover no available service error to AP."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const/16 v1, -0x7ed6

    const-string v2, "Discover function is invoked with out available DLNA service."

    invoke-direct {p0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 3216
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v1

    .line 3217
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 3219
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setRendererAsDefaultRenderer] no default renderer available, dont start discover, just send discover timeout error to AP."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const/16 v1, -0x7ed5

    const-string v2, "Discover function is invoked with out available default renderer."

    invoke-direct {p0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 3224
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 3229
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)V

    .line 3230
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 3231
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$5;

    invoke-direct {v1, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$5;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 3255
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1

    .prologue
    .line 2996
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1

    .prologue
    .line 3067
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 5

    .prologue
    const/16 v4, -0x4000

    const/4 v0, 0x0

    .line 3103
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 3104
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dont start discover, just send discover error wrong state to AP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    const/16 v1, -0x7ed4

    const-string v2, "Discover function is invoked in incorrect state."

    invoke-direct {p0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    .line 3167
    :cond_0
    :goto_0
    return v0

    .line 3108
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-direct {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;-><init>()V

    .line 3116
    const-string v2, "com.htc.service.DongleInfo"

    invoke-virtual {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->loadClass(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getClassObject()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3122
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Z

    move-result v1

    .line 3123
    if-nez v1, :cond_2

    .line 3124
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setRendererAsReadyDongle] error: mService is null!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Discover Timeout"

    invoke-direct {p0, v4, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 3127
    :cond_2
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3129
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 3130
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)V

    .line 3137
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 3142
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;

    invoke-direct {v1, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 3167
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3132
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setRendererAsReadyDongle] Can not get dongle IP!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Discover Timeout"

    invoke-direct {p0, v4, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;)I
    .locals 3

    .prologue
    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2155
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const/16 v0, -0x3e9

    .line 2166
    :goto_0
    return v0

    .line 2159
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2160
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 2162
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNARendererStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;)V

    .line 2164
    :cond_1
    monitor-exit v1

    .line 2166
    const/16 v0, -0x3e8

    goto :goto_0

    .line 2164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeat(I)I
    .locals 3

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3796
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeat] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    const/16 v0, -0x3e9

    .line 3818
    :goto_0
    return v0

    .line 3800
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 3801
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeat] unknown repeat mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3805
    :cond_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_4

    .line 3806
    :cond_3
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3808
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeat] Request setRepeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3818
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 3813
    :catch_0
    move-exception v0

    .line 3815
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setServerStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 2

    .prologue
    .line 2178
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2179
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2180
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAServerStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;)V

    .line 2183
    :cond_0
    monitor-exit v1

    .line 2184
    return-void

    .line 2183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffle(Z)V
    .locals 3

    .prologue
    .line 5339
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5340
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "setShuffle : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5350
    :goto_0
    return-void

    .line 5345
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5346
    :catch_0
    move-exception v0

    .line 5348
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected declared-synchronized setState(IZZ)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 4425
    monitor-enter p0

    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setState call stack:"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4426
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Step 1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Step 2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4428
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Step 3] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    .line 4431
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setState] >>> newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", statePrev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromMiddleLayer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4436
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_0

    .line 4441
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    move p1, v0

    .line 4445
    :cond_0
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_2

    .line 4446
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 4449
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v3

    if-ne v3, v0, :cond_3

    .line 4450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 4451
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] mControllerInfo.setPlayState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4452
    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 4454
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4456
    :try_start_2
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v2

    if-ne v2, v0, :cond_6

    .line 4457
    if-ne v1, p1, :cond_4

    if-nez v1, :cond_7

    if-nez p1, :cond_7

    .line 4458
    :cond_4
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4459
    :try_start_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_5

    .line 4460
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4461
    if-eqz v0, :cond_5

    .line 4462
    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    .line 4464
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4469
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 4454
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4425
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4464
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 4466
    :cond_7
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setState] statePrev == newState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3676
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 3691
    :cond_0
    :goto_0
    return-void

    .line 3679
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    invoke-direct {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3682
    iput-boolean v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3686
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3687
    :catch_0
    move-exception v0

    .line 3689
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSubtitleParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3288
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 3289
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setSubtitleParameter] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    const/16 v0, -0x3eb

    .line 3312
    :goto_0
    return v0

    .line 3293
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 3294
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSubtitleParameter] key == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RETURN_CODE_INVALID_ARGUMENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3298
    :cond_3
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 3299
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSubtitleParameter] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3303
    :cond_5
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSubtitleParameter] key == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setSubtitleParameter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3312
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 3307
    :catch_0
    move-exception v0

    .line 3309
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setVolume(I)I
    .locals 3

    .prologue
    .line 4366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4368
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4369
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVolume] error state for setVolume(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    const/16 v0, -0x3e9

    .line 4394
    :goto_0
    return v0

    .line 4373
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_3

    .line 4374
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setVolume], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    const/16 v0, -0x3eb

    goto :goto_0

    .line 4378
    :cond_3
    if-ltz p1, :cond_4

    const/16 v0, 0x64

    if-le p1, v0, :cond_5

    .line 4379
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVolume], Invalid volume scalar("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), range is from 0 to 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4380
    const/16 v0, -0x3ea

    goto :goto_0

    .line 4383
    :cond_5
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVolume] Request volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4387
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2102(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 4388
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4394
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 4389
    :catch_0
    move-exception v0

    .line 4391
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public startDMRMirror()V
    .locals 1

    .prologue
    .line 6139
    const-string v0, "startDMRMirror() is not used. Please use startDMRMirror(Bundle extras)"

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 6140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->startDMRMirror(Landroid/os/Bundle;)V

    .line 6141
    return-void
.end method

.method public startDMRMirror(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 6149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 6151
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_2

    .line 6152
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[startPCMOutput] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6153
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    if-eqz v0, :cond_1

    .line 6154
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    const/16 v1, -0x3eb

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;->onDMRMirrorOn(ILjava/lang/String;)V

    .line 6173
    :cond_1
    :goto_0
    return-void

    .line 6159
    :cond_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 6160
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPCMOutput] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6161
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    if-eqz v0, :cond_1

    .line 6162
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    const/16 v1, -0x3e9

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;->onDMRMirrorOn(ILjava/lang/String;)V

    goto :goto_0

    .line 6168
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->startDMRAudioMirror(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6169
    :catch_0
    move-exception v0

    .line 6171
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startPhotoSlideShow()V
    .locals 4

    .prologue
    .line 4158
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4159
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "startPhotoSlideShow : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    :goto_0
    return-void

    .line 4163
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "startPhotoSlideShow"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4165
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4166
    :catch_0
    move-exception v0

    .line 4168
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v0, -0x3e8

    .line 4118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4121
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 4122
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stop] error state for stop(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    const/16 v0, -0x3e9

    .line 4148
    :goto_0
    return v0

    .line 4126
    :cond_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 4127
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[stop] AP call stop() in STATE_STOPPED, return RETURN_CODE_OK directly."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4131
    :cond_2
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_4

    .line 4132
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[stop], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    const/16 v0, -0x3eb

    goto :goto_0

    .line 4137
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[stop] Request stop"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 4140
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4146
    :goto_1
    invoke-direct {p0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    goto :goto_0

    .line 4141
    :catch_0
    move-exception v1

    .line 4143
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopAndReset()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2374
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2378
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopAndReset] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const/16 v0, -0x3e9

    .line 2414
    :goto_0
    return v0

    .line 2387
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2388
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2391
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_2

    .line 2392
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2395
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2398
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2404
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    :goto_2
    invoke-virtual {p0, v6, v4, v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2414
    const/16 v0, -0x3e8

    goto :goto_0

    .line 2394
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2407
    :catch_0
    move-exception v0

    .line 2409
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public stopDMRMirror()I
    .locals 3

    .prologue
    .line 6182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 6184
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 6185
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopDMRMirror] error state for stop(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6186
    const/16 v0, -0x3e9

    .line 6202
    :goto_0
    return v0

    .line 6189
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_2

    .line 6190
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[stopDMRMirror], null == mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6191
    const/16 v0, -0x3eb

    goto :goto_0

    .line 6194
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[stopDMRMirror] Request stopDMRMirror"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6196
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stopDMRMirror()V

    .line 6197
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6202
    :goto_1
    const/16 v0, -0x3e8

    goto :goto_0

    .line 6198
    :catch_0
    move-exception v0

    .line 6199
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopPhotoSlideShow()V
    .locals 4

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4179
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "stopPhotoSlideShow : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    :goto_0
    return-void

    .line 4183
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "stopPhotoSlideShow"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4185
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4186
    :catch_0
    move-exception v0

    .line 4188
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public subscribeServer(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 5709
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5710
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "subscribeServer : invalid servce"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5720
    :goto_0
    return-void

    .line 5715
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5716
    :catch_0
    move-exception v0

    .line 5718
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public subscribeServer(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 5730
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5731
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "subscribeServer : invalid servce"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5742
    :goto_0
    return-void

    .line 5736
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[subscribeServer] serverId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5737
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5738
    :catch_0
    move-exception v0

    .line 5740
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 5388
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5389
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    :goto_0
    return-void

    .line 5394
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5395
    :catch_0
    move-exception v0

    .line 5397
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 5411
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5412
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5422
    :goto_0
    return-void

    .line 5417
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5418
    :catch_0
    move-exception v0

    .line 5420
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 5753
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5754
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "unsubscribeServer : invalid servce"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    :goto_0
    return-void

    .line 5759
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5760
    :catch_0
    move-exception v0

    .line 5762
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 5774
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 5775
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "unsubscribeServer : invalid servce"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5786
    :goto_0
    return-void

    .line 5780
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unsubscribeServer] serverId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v0, v1, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5782
    :catch_0
    move-exception v0

    .line 5784
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
