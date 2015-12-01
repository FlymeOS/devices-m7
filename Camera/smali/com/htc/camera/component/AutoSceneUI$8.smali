.class Lcom/htc/camera/component/AutoSceneUI$8;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoSceneUI;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/camera/component/AutoSceneUI$8;->this$0:Lcom/htc/camera/component/AutoSceneUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$8;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # invokes: Lcom/htc/camera/component/AutoSceneUI;->checkScene()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$000(Lcom/htc/camera/component/AutoSceneUI;)V

    .line 357
    return-void
.end method
