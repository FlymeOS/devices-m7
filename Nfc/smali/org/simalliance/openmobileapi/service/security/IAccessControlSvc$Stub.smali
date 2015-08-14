.class public abstract Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;
.super Landroid/os/Binder;
.source "IAccessControlSvc.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

.field static final TRANSACTION_isConnectionAllowed:I = 0x1

.field static final TRANSACTION_isNfcEventAllowed:I = 0x2

.field static final TRANSACTION_reloadUiccRules:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

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
    const-string v1, "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 57
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;->isConnectionAllowed(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v3

    .line 58
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v4, "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 71
    .restart local v2    # "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;->isNfcEventAllowed(Ljava/lang/String;[Ljava/lang/String;[B)[Z

    move-result-object v3

    .line 72
    .local v3, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":[Z
    :sswitch_3
    const-string v4, "org.simalliance.openmobileapi.service.security.IAccessControlSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;->reloadUiccRules()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
