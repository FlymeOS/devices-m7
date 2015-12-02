.class Lcom/htc/camera/component/CaptureBar$2;
.super Lcom/htc/camera/data/Trigger;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->initialize()V

    .line 291
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v1}, Lcom/htc/camera/component/CaptureBar;->access$100(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 292
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v1}, Lcom/htc/camera/component/CaptureBar;->access$200(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 293
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$2;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v1}, Lcom/htc/camera/component/CaptureBar;->access$300(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 294
    return-void
.end method
