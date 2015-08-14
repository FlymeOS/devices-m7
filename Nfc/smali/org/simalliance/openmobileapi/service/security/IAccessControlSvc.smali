.class public interface abstract Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
.super Ljava/lang/Object;
.source "IAccessControlSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;
    }
.end annotation


# virtual methods
.method public abstract isConnectionAllowed(Ljava/lang/String;Ljava/lang/String;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNfcEventAllowed(Ljava/lang/String;[Ljava/lang/String;[B)[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reloadUiccRules()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
