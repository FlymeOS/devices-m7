.class Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

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
    .line 170
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    .line 174
    :cond_0
    return-void
.end method
