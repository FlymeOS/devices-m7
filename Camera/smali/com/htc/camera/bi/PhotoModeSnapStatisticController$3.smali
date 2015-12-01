.class Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;
.super Ljava/lang/Object;
.source "PhotoModeSnapStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

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
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    .line 162
    return-void
.end method
