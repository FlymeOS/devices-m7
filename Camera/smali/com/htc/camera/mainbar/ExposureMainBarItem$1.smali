.class Lcom/htc/camera/mainbar/ExposureMainBarItem$1;
.super Ljava/lang/Object;
.source "ExposureMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

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
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/ExposureMainBarItem;->updateEnableState()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$200(Lcom/htc/camera/mainbar/ExposureMainBarItem;)V

    .line 128
    return-void
.end method
