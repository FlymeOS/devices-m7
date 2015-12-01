.class Lcom/htc/camera/component/CaptureBar$17;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$17;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$17;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$17;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$17;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v1}, Lcom/htc/camera/component/CaptureBar;->access$100(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$2900(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 2077
    :cond_0
    return-void
.end method
