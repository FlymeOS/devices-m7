.class public abstract Lcom/htc/camera/IRotateDialogManager;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IRotateDialogManager.java"


# instance fields
.field public final dialogKeyDownEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final dialogKeyUpEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final hasDialog:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 36
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IRotateDialogManager.hasDialog"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/IRotateDialogManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IRotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    .line 39
    const-string v0, "IRotateDialogManager.DialogKeyDownEvent"

    sget-object v1, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/IRotateDialogManager;->dialogKeyDownEvent:Lcom/htc/camera/event/Event;

    .line 40
    const-string v0, "IRotateDialogManager.DialogKeyUpEvent"

    sget-object v1, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/IRotateDialogManager;->dialogKeyUpEvent:Lcom/htc/camera/event/Event;

    .line 41
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/camera/IRotateDialogManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 70
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 73
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 74
    return-void
.end method

.method public abstract hideDialog(Lcom/htc/camera/Handle;)V
.end method

.method public final showDialog(Landroid/app/Dialog;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;
.end method
