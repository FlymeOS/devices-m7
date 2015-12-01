.class Lcom/htc/camera/component/FocusIndicator$6;
.super Ljava/lang/Object;
.source "FocusIndicator.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FocusIndicator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FocusIndicator;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/htc/camera/component/FocusIndicator$6;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$6;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # invokes: Lcom/htc/camera/component/FocusIndicator;->hideFocusIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$000(Lcom/htc/camera/component/FocusIndicator;)V

    .line 394
    return-void
.end method
