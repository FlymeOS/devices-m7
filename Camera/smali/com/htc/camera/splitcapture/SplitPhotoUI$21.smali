.class Lcom/htc/camera/splitcapture/SplitPhotoUI$21;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$21;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$21;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$5102(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 2055
    return-void
.end method
