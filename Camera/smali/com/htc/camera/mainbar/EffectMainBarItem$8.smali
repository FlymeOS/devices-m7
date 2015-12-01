.class Lcom/htc/camera/mainbar/EffectMainBarItem$8;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$8;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    .line 241
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$8;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->access$400(Lcom/htc/camera/mainbar/EffectMainBarItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - isDualCameraEnabled:"

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$8;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/EffectMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->access$100(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    .line 243
    return-void
.end method
