.class Lcom/htc/camera/effect/AutoScene$1;
.super Ljava/lang/Object;
.source "AutoScene.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/AutoScene;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/AutoScene;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/effect/AutoScene$1;->this$0:Lcom/htc/camera/effect/AutoScene;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$1;->this$0:Lcom/htc/camera/effect/AutoScene;

    invoke-virtual {v0}, Lcom/htc/camera/effect/AutoScene;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$1;->this$0:Lcom/htc/camera/effect/AutoScene;

    # invokes: Lcom/htc/camera/effect/AutoScene;->canEnableFaceBeautifier()Z
    invoke-static {v0}, Lcom/htc/camera/effect/AutoScene;->access$000(Lcom/htc/camera/effect/AutoScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$1;->this$0:Lcom/htc/camera/effect/AutoScene;

    # invokes: Lcom/htc/camera/effect/AutoScene;->enableFaceBeautifier()V
    invoke-static {v0}, Lcom/htc/camera/effect/AutoScene;->access$100(Lcom/htc/camera/effect/AutoScene;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$1;->this$0:Lcom/htc/camera/effect/AutoScene;

    # invokes: Lcom/htc/camera/effect/AutoScene;->disableFaceBeautifier()V
    invoke-static {v0}, Lcom/htc/camera/effect/AutoScene;->access$200(Lcom/htc/camera/effect/AutoScene;)V

    goto :goto_0
.end method
