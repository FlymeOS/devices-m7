.class Lcom/htc/camera/HTCCamera$39;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingLimitState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 6602
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$39;->this$0:Lcom/htc/camera/HTCCamera;

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
            "Lcom/htc/camera/RecordingLimitState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingLimitState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6606
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$39;->this$0:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/HTCCamera$39$1;

    invoke-direct {v1, p0, p2}, Lcom/htc/camera/HTCCamera$39$1;-><init>(Lcom/htc/camera/HTCCamera$39;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 6613
    return-void
.end method
