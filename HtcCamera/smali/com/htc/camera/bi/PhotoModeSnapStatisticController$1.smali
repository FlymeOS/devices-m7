.class Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;
.super Lcom/htc/camera/trigger/Trigger;
.source "PhotoModeSnapStatisticController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    .line 139
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget v2, v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->setMediaCountInComposeKeyTable(Ljava/lang/String;I)V

    .line 140
    return-void
.end method
