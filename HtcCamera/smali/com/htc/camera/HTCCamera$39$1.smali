.class Lcom/htc/camera/HTCCamera$39$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/HTCCamera$39;

.field final synthetic val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera$39;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 6607
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$39$1;->this$1:Lcom/htc/camera/HTCCamera$39;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$39$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6610
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$39$1;->this$1:Lcom/htc/camera/HTCCamera$39;

    iget-object v1, v0, Lcom/htc/camera/HTCCamera$39;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$39$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    iget-object v0, v0, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingLimitState;

    # invokes: Lcom/htc/camera/HTCCamera;->onRecordingLimitStateChanged(Lcom/htc/camera/RecordingLimitState;)V
    invoke-static {v1, v0}, Lcom/htc/camera/HTCCamera;->access$5300(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/RecordingLimitState;)V

    .line 6611
    return-void
.end method
