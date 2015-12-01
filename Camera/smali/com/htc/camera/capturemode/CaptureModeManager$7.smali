.class Lcom/htc/camera/capturemode/CaptureModeManager$7;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$7;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 296
    return-void
.end method
