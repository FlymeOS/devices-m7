.class Lcom/htc/camera/component/ScreenSaveUI$1;
.super Lcom/htc/camera/trigger/Trigger;
.source "ScreenSaveUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ScreenSaveUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ScreenSaveUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/camera/component/ScreenSaveUI$1;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI$1;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ScreenSaveUI;->initialize()V

    .line 52
    return-void
.end method
