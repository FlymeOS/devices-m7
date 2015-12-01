.class Lcom/htc/camera/component/SeekBarUI$4;
.super Ljava/lang/Object;
.source "SeekBarUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SeekBarUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SeekBarUI;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/camera/component/SeekBarUI$4;->this$0:Lcom/htc/camera/component/SeekBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$4;->this$0:Lcom/htc/camera/component/SeekBarUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SeekBarUI;->getFakeUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$4;->this$0:Lcom/htc/camera/component/SeekBarUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SeekBarUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI$4;->this$0:Lcom/htc/camera/component/SeekBarUI;

    invoke-virtual {v1, v0, v0}, Lcom/htc/camera/component/SeekBarUI;->onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI$4;->this$0:Lcom/htc/camera/component/SeekBarUI;

    invoke-virtual {v1, v0, v0}, Lcom/htc/camera/component/SeekBarUI;->onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
