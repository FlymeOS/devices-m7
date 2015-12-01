.class Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;
.super Lcom/htc/camera/Handle;
.source "CaptureBar.java"


# instance fields
.field public final button:Lcom/htc/camera/ICaptureBar$CaptureButton;

.field public final flags:I

.field private final icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 196
    const-string v0, "CaptureButtonIcon"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->button:Lcom/htc/camera/ICaptureBar$CaptureButton;

    .line 198
    iput-object p2, p0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;

    .line 199
    iput p3, p0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->flags:I

    .line 200
    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
