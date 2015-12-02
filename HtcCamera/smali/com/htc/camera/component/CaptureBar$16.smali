.class Lcom/htc/camera/component/CaptureBar$16;
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
    .line 2059
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$16;->this$0:Lcom/htc/camera/component/CaptureBar;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$16;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2800(Lcom/htc/camera/component/CaptureBar;)V

    .line 2064
    return-void
.end method
