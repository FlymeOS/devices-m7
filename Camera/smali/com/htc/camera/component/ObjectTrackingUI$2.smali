.class Lcom/htc/camera/component/ObjectTrackingUI$2;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "ObjectTrackingUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI$2;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$2;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # invokes: Lcom/htc/camera/component/ObjectTrackingUI;->checkFaceDetection()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$200(Lcom/htc/camera/component/ObjectTrackingUI;)V

    .line 161
    return-void
.end method
