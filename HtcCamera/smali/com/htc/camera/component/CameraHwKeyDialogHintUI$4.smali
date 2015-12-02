.class Lcom/htc/camera/component/CameraHwKeyDialogHintUI$4;
.super Ljava/lang/Object;
.source "CameraHwKeyDialogHintUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$4;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 361
    const-string v0, "TAG"

    const-string v1, "DialogHintPopUp  - onShow"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method
