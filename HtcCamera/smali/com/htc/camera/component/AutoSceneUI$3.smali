.class Lcom/htc/camera/component/AutoSceneUI$3;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoSceneUI;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/camera/component/AutoSceneUI$3;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$3;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI$3;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    const/16 v2, 0x2712

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const/4 v8, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoSceneUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 275
    return-void
.end method
