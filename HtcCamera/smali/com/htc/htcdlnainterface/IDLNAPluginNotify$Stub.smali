.class public abstract Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginNotify.java"

# interfaces
.implements Lcom/htc/htcdlnainterface/IDLNAPluginNotify;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.htcdlnainterface.IDLNAPluginNotify"

.field static final TRANSACTION_albumArtDownloadedNotify:I = 0xf

.field static final TRANSACTION_contentAddedNotify:I = 0xa

.field static final TRANSACTION_contentBrowsingDoneNotify:I = 0xb

.field static final TRANSACTION_contentBrowsingErrorNotify:I = 0xc

.field static final TRANSACTION_contentThumbnailUpdateNotify:I = 0x9

.field static final TRANSACTION_contentUpdatedNotify:I = 0xd

.field static final TRANSACTION_controllerErrorNotify:I = 0x14

.field static final TRANSACTION_controllerResponseNotify:I = 0x15

.field static final TRANSACTION_getContentItemDetailsNotify:I = 0x16

.field static final TRANSACTION_imageDownloadedNotify:I = 0xe

.field static final TRANSACTION_mirrorRendererAddedNotify:I = 0x18

.field static final TRANSACTION_onDMRMirrorOn:I = 0x19

.field static final TRANSACTION_onStartReadingPCMData:I = 0x1a

.field static final TRANSACTION_onStopReadingPCMData:I = 0x1b

.field static final TRANSACTION_playlistCreatedResultNotify:I = 0x10

.field static final TRANSACTION_rendererAddedNotify:I = 0x4

.field static final TRANSACTION_rendererListUpdateNotify:I = 0x6

.field static final TRANSACTION_rendererRemovedNotify:I = 0x5

.field static final TRANSACTION_rendererThumbnailUpdateNotify:I = 0x8

.field static final TRANSACTION_serverAddedNotify:I = 0x1

.field static final TRANSACTION_serverListUpdateNotify:I = 0x3

.field static final TRANSACTION_serverRemovedNotify:I = 0x2

.field static final TRANSACTION_serverThumbnailUpdateNotify:I = 0x7

.field static final TRANSACTION_updateControlItemInfo:I = 0x12

.field static final TRANSACTION_updateControlItemThumbnail:I = 0x13

.field static final TRANSACTION_updateControllerStatus:I = 0x11

.field static final TRANSACTION_updateDownloadStoreAlbumArtNotify:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p0, p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginNotify;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/htcdlnainterface/IDLNAPluginNotify;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/htcdlnainterface/IDLNAPluginNotify;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    .line 75
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->rendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    goto :goto_0

    .line 93
    :sswitch_5
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :sswitch_6
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .line 108
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->rendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    goto :goto_0

    .line 113
    :sswitch_7
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :sswitch_8
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :sswitch_9
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :sswitch_a
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    .line 154
    invoke-virtual/range {v0 .. v6}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 159
    :sswitch_b
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v8

    :goto_1
    move-object v0, p0

    .line 170
    invoke-virtual/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto/16 :goto_0

    .line 169
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 175
    :sswitch_c
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :sswitch_d
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 196
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->contentUpdatedNotify(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 201
    :sswitch_e
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :sswitch_f
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :sswitch_10
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 232
    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->playlistCreatedResultNotify(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 237
    :sswitch_11
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    .line 245
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->updateControllerStatus(Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V

    goto/16 :goto_0

    .line 250
    :sswitch_12
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;

    .line 258
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->updateControlItemInfo(Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V

    goto/16 :goto_0

    .line 263
    :sswitch_13
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :sswitch_14
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :sswitch_15
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :sswitch_16
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    .line 311
    :cond_4
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    goto/16 :goto_0

    .line 316
    :sswitch_17
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :sswitch_18
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    sget-object v0, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .line 336
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->mirrorRendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    goto/16 :goto_0

    .line 341
    :sswitch_19
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->onDMRMirrorOn(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :sswitch_1a
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->onStartReadingPCMData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :sswitch_1b
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginNotify"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p0, v0, v1}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->onStopReadingPCMData(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
