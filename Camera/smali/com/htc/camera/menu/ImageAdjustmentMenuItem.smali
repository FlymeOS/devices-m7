.class public Lcom/htc/camera/menu/ImageAdjustmentMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "ImageAdjustmentMenuItem.java"


# instance fields
.field private final m_CameraThread:Lcom/htc/camera/CameraThread;

.field private final m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;I)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    .line 161
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/ImageAdjustmentMenuItem;)Lcom/htc/camera/CameraThread;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/htc/camera/CameraThread;

    return-object v0
.end method


# virtual methods
.method public updateContent()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 174
    iget-object v1, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    new-instance v3, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;-><init>(Lcom/htc/camera/menu/ImageAdjustmentMenuItem;Lcom/htc/camera/HTCCamera;I)V

    aput-object v3, v2, v1

    .line 174
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 180
    :cond_1
    const v0, 0x7f0801b1

    .line 181
    iget-object v1, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 183
    iget-object v2, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->isDefaultLevel()Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    const v0, 0x7f0801b0

    .line 189
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->setSummary(I)V

    .line 190
    return-void

    .line 181
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
