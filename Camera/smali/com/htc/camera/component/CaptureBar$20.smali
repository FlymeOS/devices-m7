.class Lcom/htc/camera/component/CaptureBar$20;
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
    .line 2178
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$20;->this$0:Lcom/htc/camera/component/CaptureBar;

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
    .line 2182
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$20;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/CaptureBar;->showSelfTimer(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/CaptureBar;->access$3400(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2183
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$20;->this$0:Lcom/htc/camera/component/CaptureBar;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$3200(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2184
    return-void
.end method
