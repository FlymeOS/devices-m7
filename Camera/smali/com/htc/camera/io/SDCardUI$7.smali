.class Lcom/htc/camera/io/SDCardUI$7;
.super Lcom/htc/camera/trigger/Trigger;
.source "SDCardUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$7;->this$0:Lcom/htc/camera/io/SDCardUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$7;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z
    invoke-static {v0, v1}, Lcom/htc/camera/io/SDCardUI;->access$1402(Lcom/htc/camera/io/SDCardUI;Z)Z

    .line 322
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$7;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/16 v1, 0x2714

    # invokes: Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/io/SDCardUI;->access$1800(Lcom/htc/camera/io/SDCardUI;I)V

    .line 323
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$7;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1600(Lcom/htc/camera/io/SDCardUI;)V

    .line 324
    return-void
.end method
