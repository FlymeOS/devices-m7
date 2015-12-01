.class Lcom/htc/camera/component/MakeUpController$14;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$14;->this$0:Lcom/htc/camera/component/MakeUpController;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$14;->this$0:Lcom/htc/camera/component/MakeUpController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/MakeUpController;->updateMakeUpBySceneEffect(Z)V

    .line 346
    return-void
.end method
