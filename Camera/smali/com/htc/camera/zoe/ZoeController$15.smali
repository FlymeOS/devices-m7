.class Lcom/htc/camera/zoe/ZoeController$15;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$15;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$15;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2400(Lcom/htc/camera/zoe/ZoeController;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$15;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$200(Lcom/htc/camera/zoe/ZoeController;)V

    .line 1291
    :cond_0
    return-void
.end method
