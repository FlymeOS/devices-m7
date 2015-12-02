.class Lcom/htc/camera/mainbar/EffectMainBarItem$6;
.super Ljava/lang/Object;
.source "EffectMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/EffectMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->access$100(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    .line 214
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/mainbar/EffectMainBarItem;->m_HasChange:Z
    invoke-static {v0, v1}, Lcom/htc/camera/mainbar/EffectMainBarItem;->access$202(Lcom/htc/camera/mainbar/EffectMainBarItem;Z)Z

    .line 215
    return-void
.end method
