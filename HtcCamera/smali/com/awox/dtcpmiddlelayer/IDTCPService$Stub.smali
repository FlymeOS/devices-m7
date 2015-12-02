.class public abstract Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;
.super Landroid/os/Binder;
.source "IDTCPService.java"

# interfaces
.implements Lcom/awox/dtcpmiddlelayer/IDTCPService;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
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
    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;->asInterface(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;

    move-result-object v2

    .line 52
    invoke-virtual {p0, v1, v2}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->registerDTCPServiceCallback(ILcom/awox/dtcpmiddlelayer/IDTCPServiceCB;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    :sswitch_2
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 65
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->FillBuffer(JI[B)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->setFileSize(J)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->startDTCPServer()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->stopDTCPServer()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
