.class Lcom/htc/camera/zoe/ZoeController$17;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$17;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1320
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$17;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$17;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;
    invoke-static {v1}, Lcom/htc/camera/zoe/ZoeController;->access$3000(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeUI;

    move-result-object v1

    const/16 v2, 0x2727

    iget-object v5, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    move v4, v3

    # invokes: Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->access$3200(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1321
    return-void
.end method
