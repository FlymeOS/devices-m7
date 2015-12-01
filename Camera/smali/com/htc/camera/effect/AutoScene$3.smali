.class Lcom/htc/camera/effect/AutoScene$3;
.super Lcom/htc/camera/property/DynamicPropertyChangedListener;
.source "AutoScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/property/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/AutoScene;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/AutoScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/camera/effect/AutoScene$3;->this$0:Lcom/htc/camera/effect/AutoScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/property/DynamicPropertyChangedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$3;->this$0:Lcom/htc/camera/effect/AutoScene;

    invoke-virtual {v0}, Lcom/htc/camera/effect/AutoScene;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$3;->this$0:Lcom/htc/camera/effect/AutoScene;

    # invokes: Lcom/htc/camera/effect/AutoScene;->canEnableFaceBeautifier()Z
    invoke-static {v0}, Lcom/htc/camera/effect/AutoScene;->access$000(Lcom/htc/camera/effect/AutoScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$3;->this$0:Lcom/htc/camera/effect/AutoScene;

    # invokes: Lcom/htc/camera/effect/AutoScene;->enableFaceBeautifier()V
    invoke-static {v0}, Lcom/htc/camera/effect/AutoScene;->access$100(Lcom/htc/camera/effect/AutoScene;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene$3;->this$0:Lcom/htc/camera/effect/AutoScene;

    # invokes: Lcom/htc/camera/effect/AutoScene;->disableFaceBeautifier()V
    invoke-static {v0}, Lcom/htc/camera/effect/AutoScene;->access$200(Lcom/htc/camera/effect/AutoScene;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPropertyChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/effect/AutoScene$3;->onPropertyChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
