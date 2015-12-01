.class Lcom/htc/camera/io/SDCardUI$6;
.super Ljava/lang/Object;
.source "SDCardUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$6;->this$0:Lcom/htc/camera/io/SDCardUI;

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
            "Ljava/lang/Object;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$6;->this$0:Lcom/htc/camera/io/SDCardUI;

    # getter for: Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1400(Lcom/htc/camera/io/SDCardUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$6;->this$0:Lcom/htc/camera/io/SDCardUI;

    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI$6;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/16 v2, 0x2714

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    # invokes: Lcom/htc/camera/io/SDCardUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/SDCardUI;->access$1700(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/component/Component;IJZ)Z

    .line 303
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$6;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z
    invoke-static {v0, v1}, Lcom/htc/camera/io/SDCardUI;->access$1402(Lcom/htc/camera/io/SDCardUI;Z)Z

    .line 305
    :cond_0
    return-void
.end method
