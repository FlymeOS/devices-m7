.class Lcom/htc/server/gesture/GloveInputFilter$1;
.super Ljava/lang/Object;
.source "GloveInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/gesture/GloveInputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/gesture/GloveInputFilter;


# direct methods
.method constructor <init>(Lcom/htc/server/gesture/GloveInputFilter;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/server/gesture/GloveInputFilter$1;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$1;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I
    invoke-static {v2}, Lcom/htc/server/gesture/GloveInputFilter;->access$000(Lcom/htc/server/gesture/GloveInputFilter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 70
    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$1;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I
    invoke-static {v2}, Lcom/htc/server/gesture/GloveInputFilter;->access$100(Lcom/htc/server/gesture/GloveInputFilter;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 71
    .local v0, "isGloveMode":Z
    :goto_0
    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$1;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # getter for: Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;
    invoke-static {v2}, Lcom/htc/server/gesture/GloveInputFilter;->access$200(Lcom/htc/server/gesture/GloveInputFilter;)Lcom/android/server/input/InputManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    .line 72
    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter$1;->this$0:Lcom/htc/server/gesture/GloveInputFilter;

    # setter for: Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I
    invoke-static {v2, v1}, Lcom/htc/server/gesture/GloveInputFilter;->access$002(Lcom/htc/server/gesture/GloveInputFilter;I)I

    .line 74
    .end local v0    # "isGloveMode":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0
.end method
