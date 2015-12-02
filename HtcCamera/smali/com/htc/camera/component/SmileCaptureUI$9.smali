.class Lcom/htc/camera/component/SmileCaptureUI$9;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "SmileCaptureUI.java"


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
.field final synthetic this$0:Lcom/htc/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SmileCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/htc/camera/component/SmileCaptureUI$9;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

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
    .line 233
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$9;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    # invokes: Lcom/htc/camera/component/SmileCaptureUI;->updateSmileCaptureState()V
    invoke-static {v0}, Lcom/htc/camera/component/SmileCaptureUI;->access$000(Lcom/htc/camera/component/SmileCaptureUI;)V

    .line 234
    return-void
.end method
