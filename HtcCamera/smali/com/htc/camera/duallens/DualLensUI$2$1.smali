.class Lcom/htc/camera/duallens/DualLensUI$2$1;
.super Ljava/lang/Object;
.source "DualLensUI.java"

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
.field final synthetic this$1:Lcom/htc/camera/duallens/DualLensUI$2;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI$2;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$2$1;->this$1:Lcom/htc/camera/duallens/DualLensUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 9
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
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 125
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$2$1;->this$1:Lcom/htc/camera/duallens/DualLensUI$2;

    iget-object v0, v0, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI$2$1;->this$1:Lcom/htc/camera/duallens/DualLensUI$2;

    iget-object v1, v1, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v2, 0x3e8

    move v4, v3

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    invoke-static/range {v0 .. v8}, Lcom/htc/camera/duallens/DualLensUI;->access$100(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$2$1;->this$1:Lcom/htc/camera/duallens/DualLensUI$2;

    iget-object v0, v0, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI$2$1;->this$1:Lcom/htc/camera/duallens/DualLensUI$2;

    iget-object v1, v1, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v2, 0x3e9

    move v4, v3

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    invoke-static/range {v0 .. v8}, Lcom/htc/camera/duallens/DualLensUI;->access$200(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method
