.class Lcom/htc/camera/component/CaptureBar$25;
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
    .line 2303
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$25;->this$0:Lcom/htc/camera/component/CaptureBar;

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
    const/4 v1, 0x0

    .line 2309
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$25;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2800(Lcom/htc/camera/component/CaptureBar;)V

    .line 2312
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$25;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$3200(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2316
    :goto_0
    return-void

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$25;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$2300(Lcom/htc/camera/component/CaptureBar;Z)V

    goto :goto_0
.end method
