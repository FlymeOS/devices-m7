.class Lcom/htc/camera/component/CaptureBar$14;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$14;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2042
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$14;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # invokes: Lcom/htc/camera/component/CaptureBar;->onElapsedRecordingSecondsChanged(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/camera/component/CaptureBar;->access$2700(Lcom/htc/camera/component/CaptureBar;J)V

    .line 2043
    return-void
.end method
