.class public abstract Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginService.java"

# interfaces
.implements Lcom/htc/htcdlnainterface/IDLNAPluginService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.htcdlnainterface.IDLNAPluginService"

.field static final TRANSACTION_albumArtDownload:I = 0xb

.field static final TRANSACTION_browse:I = 0x8

.field static final TRANSACTION_browseCancel:I = 0x9

.field static final TRANSACTION_cancelContentThumbnail:I = 0x31

.field static final TRANSACTION_changeDuration:I = 0x1f

.field static final TRANSACTION_changePushPlaylistItem:I = 0x10

.field static final TRANSACTION_changeRemotePlaylistItem:I = 0xf

.field static final TRANSACTION_checkErrorExists:I = 0x41

.field static final TRANSACTION_checkRendererIdExists:I = 0x44

.field static final TRANSACTION_checkSessionCookieInUse:I = 0x45

.field static final TRANSACTION_continueBrowseDown:I = 0x39

.field static final TRANSACTION_createMediaController:I = 0x22

.field static final TRANSACTION_destroyMediaController:I = 0x23

.field static final TRANSACTION_getContentThumbnail:I = 0x7

.field static final TRANSACTION_getDMCContentItemDetails:I = 0x24

.field static final TRANSACTION_getDMCControlItemInfo:I = 0x27

.field static final TRANSACTION_getDMCControlStatus:I = 0x1e

.field static final TRANSACTION_getDMCCurrentContainerID:I = 0x29

.field static final TRANSACTION_getDMCCurrentContentID:I = 0x28

.field static final TRANSACTION_getDMCCurrentLocalPlayId:I = 0x2a

.field static final TRANSACTION_getDMCCurrentLocalPlayIndex:I = 0x2e

.field static final TRANSACTION_getDMCLocalContentItemDetails:I = 0x38

.field static final TRANSACTION_getDMCMuteControlSupport:I = 0x33

.field static final TRANSACTION_getDMCPhotoSlideshowState:I = 0x30

.field static final TRANSACTION_getDMCVolumeControlSupport:I = 0x32

.field static final TRANSACTION_getDMPContentItemDetails:I = 0xc

.field static final TRANSACTION_getLastErrorId:I = 0x42

.field static final TRANSACTION_getLastErrorReason:I = 0x43

.field static final TRANSACTION_getMirrorRenderer:I = 0x3d

.field static final TRANSACTION_getPlayPosition:I = 0x1b

.field static final TRANSACTION_getPlaylistPlayIndex:I = 0x1c

.field static final TRANSACTION_getPlaylistTotalCount:I = 0x1d

.field static final TRANSACTION_getRendererIdData:I = 0x3f

.field static final TRANSACTION_getRendererList:I = 0x4

.field static final TRANSACTION_getRendererThumbnail:I = 0x6

.field static final TRANSACTION_getServerList:I = 0x3

.field static final TRANSACTION_getServerThumbnail:I = 0x5

.field static final TRANSACTION_imageDownload:I = 0xa

.field static final TRANSACTION_isBrowsingCmdDone:I = 0x26

.field static final TRANSACTION_isPCMStreaming:I = 0x4c

.field static final TRANSACTION_isShuffleEnabled:I = 0x47

.field static final TRANSACTION_newPushEncryptBuffer:I = 0x3b

.field static final TRANSACTION_newPushEncryptSingle:I = 0x3a

.field static final TRANSACTION_newPushPCMBuffer:I = 0x4a

.field static final TRANSACTION_newPushPlaylist:I = 0xe

.field static final TRANSACTION_newPushSingle:I = 0x21

.field static final TRANSACTION_newPushSingle2:I = 0x3e

.field static final TRANSACTION_newRemotePlaylist:I = 0xd

.field static final TRANSACTION_newRemoteSingle:I = 0x20

.field static final TRANSACTION_newSingleURI:I = 0x3c

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0x11

.field static final TRANSACTION_reArrangePushPlaylist:I = 0x37

.field static final TRANSACTION_reSearchDevices:I = 0x25

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setAutoReleaseAfterPlayCompleted:I = 0x48

.field static final TRANSACTION_setBrowseThumbSize:I = 0x34

.field static final TRANSACTION_setControllingTimeout:I = 0x2b

.field static final TRANSACTION_setDMCPhotoSlideshowState:I = 0x2f

.field static final TRANSACTION_setDMCThumbSize:I = 0x36

.field static final TRANSACTION_setDMPAlbumArtSize:I = 0x35

.field static final TRANSACTION_setFilterType:I = 0x46

.field static final TRANSACTION_setMute:I = 0x15

.field static final TRANSACTION_setOutputPath:I = 0x40

.field static final TRANSACTION_setRepeat:I = 0x18

.field static final TRANSACTION_setSeek:I = 0x16

.field static final TRANSACTION_setShuffle:I = 0x17

.field static final TRANSACTION_setSubtitleParameter:I = 0x49

.field static final TRANSACTION_setVolume:I = 0x14

.field static final TRANSACTION_startDMRAudioMirror:I = 0x4b

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_stopDMRMirror:I = 0x4d

.field static final TRANSACTION_subscribeServer:I = 0x2c

.field static final TRANSACTION_switchPlaylistNextItem:I = 0x19

.field static final TRANSACTION_switchPlaylistPrevItem:I = 0x1a

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unsubscribeServer:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/htcdlnainterface/IDLNAPluginService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1059
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 42
    :sswitch_0
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginNotify;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->registerCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    :sswitch_2
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginNotify;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getServerList(I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getRendererList(I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    :sswitch_5
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getServerThumbnail(ILjava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    :sswitch_6
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getRendererThumbnail(ILjava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    :sswitch_7
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 124
    :sswitch_8
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v0, p0

    .line 137
    invoke-virtual/range {v0 .. v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    :sswitch_9
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_a
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    :sswitch_b
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    :sswitch_c
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    :sswitch_d
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;

    .line 209
    :cond_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;)Z

    move-result v0

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v0, :cond_1

    move v0, v10

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    .line 216
    :sswitch_e
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 229
    invoke-virtual/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v0, :cond_2

    move v8, v10

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    :sswitch_f
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    :sswitch_10
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 256
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->changePushPlaylistItem(ILjava/lang/String;J)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    :sswitch_11
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->play(ILjava/lang/String;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 273
    :sswitch_12
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->pause(ILjava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 284
    :sswitch_13
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->stop(ILjava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 295
    :sswitch_14
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setVolume(ILjava/lang/String;I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 308
    :sswitch_15
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v8, v10

    .line 315
    :cond_3
    invoke-virtual {p0, v0, v1, v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setMute(ILjava/lang/String;Z)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 321
    :sswitch_16
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 328
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setSeek(ILjava/lang/String;J)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 334
    :sswitch_17
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v8, v10

    .line 341
    :cond_4
    invoke-virtual {p0, v0, v1, v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setShuffle(ILjava/lang/String;Z)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 347
    :sswitch_18
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setRepeat(ILjava/lang/String;I)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 360
    :sswitch_19
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 371
    :sswitch_1a
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 382
    :sswitch_1b
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v0

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 394
    :sswitch_1c
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v0

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 406
    :sswitch_1d
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v0

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 418
    :sswitch_1e
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    move-result-object v0

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v0, :cond_5

    .line 426
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {v0, p3, v10}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 430
    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 436
    :sswitch_1f
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 443
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->changeDuration(ILjava/lang/String;J)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 449
    :sswitch_20
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 460
    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 466
    :sswitch_21
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 479
    :sswitch_22
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 486
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    .line 491
    :cond_6
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)I

    move-result v0

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 498
    :sswitch_23
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 509
    :sswitch_24
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    move-result-object v0

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v0, :cond_7

    .line 521
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {v0, p3, v10}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 525
    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 531
    :sswitch_25
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->reSearchDevices(I)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 540
    :sswitch_26
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v0, :cond_8

    move v8, v10

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 554
    :sswitch_27
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 565
    :sswitch_28
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :sswitch_29
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :sswitch_2a
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v0

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 601
    :sswitch_2b
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 604
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setControllingTimeout(J)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 610
    :sswitch_2c
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->subscribeServer(ILjava/lang/String;)V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 621
    :sswitch_2d
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->unsubscribeServer(ILjava/lang/String;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 632
    :sswitch_2e
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I

    move-result v0

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 644
    :sswitch_2f
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 651
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    move-result v0

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v0, :cond_9

    move v8, v10

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 658
    :sswitch_30
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCPhotoSlideshowState(ILjava/lang/String;)I

    move-result v0

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 670
    :sswitch_31
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 675
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->cancelContentThumbnail(II)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 681
    :sswitch_32
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v0

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    if-eqz v0, :cond_a

    move v8, v10

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 693
    :sswitch_33
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCMuteControlSupport(ILjava/lang/String;)Z

    move-result v0

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v0, :cond_b

    move v8, v10

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 705
    :sswitch_34
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setBrowseThumbSize(ILjava/lang/String;)Z

    move-result v0

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v0, :cond_c

    move v8, v10

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 717
    :sswitch_35
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setDMPAlbumArtSize(ILjava/lang/String;)Z

    move-result v0

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    if-eqz v0, :cond_d

    move v8, v10

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 729
    :sswitch_36
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setDMCThumbSize(ILjava/lang/String;)Z

    move-result v0

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    if-eqz v0, :cond_e

    move v8, v10

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 741
    :sswitch_37
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 750
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    move-result v0

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v0, :cond_f

    move v8, v10

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 757
    :sswitch_38
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCLocalContentItemDetails(III)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 770
    :sswitch_39
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, p0

    .line 785
    invoke-virtual/range {v0 .. v9}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V

    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 791
    :sswitch_3a
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 798
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    .line 803
    :cond_10
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V

    .line 804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 809
    :sswitch_3b
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 816
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    .line 821
    :cond_11
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushEncryptBuffer(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 827
    :sswitch_3c
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 838
    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 844
    :sswitch_3d
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 847
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    move-result-object v0

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    if-eqz v0, :cond_12

    .line 850
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    invoke-virtual {v0, p3, v10}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 854
    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 860
    :sswitch_3e
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 867
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    .line 872
    :cond_13
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 878
    :sswitch_3f
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    move-result-object v0

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    if-eqz v0, :cond_14

    .line 884
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    invoke-virtual {v0, p3, v10}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 888
    :cond_14
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 894
    :sswitch_40
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 899
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setOutputPath(ILjava/lang/String;)V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 905
    :sswitch_41
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->checkErrorExists(ILjava/lang/String;)Z

    move-result v0

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v0, :cond_15

    move v8, v10

    :cond_15
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 917
    :sswitch_42
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getLastErrorId(ILjava/lang/String;)I

    move-result v0

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 929
    :sswitch_43
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    :sswitch_44
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->checkRendererIdExists(ILjava/lang/String;)Z

    move-result v0

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v0, :cond_16

    move v8, v10

    :cond_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 953
    :sswitch_45
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 958
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->checkSessionCookieInUse(II)Z

    move-result v0

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v0, :cond_17

    move v8, v10

    :cond_17
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 965
    :sswitch_46
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 970
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setFilterType(II)V

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 976
    :sswitch_47
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 981
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->isShuffleEnabled(ILjava/lang/String;)Z

    move-result v0

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    if-eqz v0, :cond_18

    move v8, v10

    :cond_18
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 988
    :sswitch_48
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v10

    .line 993
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setAutoReleaseAfterPlayCompleted(IZ)Z

    move-result v0

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    if-eqz v0, :cond_19

    move v8, v10

    :cond_19
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1a
    move v0, v8

    .line 992
    goto :goto_2

    .line 1000
    :sswitch_49
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setSubtitleParameter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    if-eqz v0, :cond_1b

    move v8, v10

    :cond_1b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1016
    :sswitch_4a
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushPCMBuffer(ILjava/lang/String;)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1027
    :sswitch_4b
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 1034
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1039
    :cond_1c
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->startDMRAudioMirror(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1045
    :sswitch_4c
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->isPCMStreaming()Z

    move-result v0

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    if-eqz v0, :cond_1d

    move v8, v10

    :cond_1d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1053
    :sswitch_4d
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->stopDMRMirror()V

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
