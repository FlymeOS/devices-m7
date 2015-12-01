.class Lcom/htc/camera/component/MakeUpController$9;
.super Ljava/lang/Object;
.source "MakeUpController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$9;->this$0:Lcom/htc/camera/component/MakeUpController;

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
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$9;->this$0:Lcom/htc/camera/component/MakeUpController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/MakeUpController;->updateMakeUpBySceneEffect(Z)V

    .line 254
    return-void
.end method
