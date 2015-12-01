.class Lcom/htc/camera/HTCCamera$38$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/HTCCamera$38;

.field final synthetic val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

.field final synthetic val$property:Lcom/htc/camera/property/Property;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera$38;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 6593
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$38$1;->this$1:Lcom/htc/camera/HTCCamera$38;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$38$1;->val$property:Lcom/htc/camera/property/Property;

    iput-object p3, p0, Lcom/htc/camera/HTCCamera$38$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6596
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$38$1;->this$1:Lcom/htc/camera/HTCCamera$38;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera$38;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$38$1;->val$property:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$38$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    # invokes: Lcom/htc/camera/HTCCamera;->onCameraThreadPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->access$5200(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    .line 6597
    return-void
.end method
