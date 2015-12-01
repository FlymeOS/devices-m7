.class final Lcom/htc/camera/component/CaptureBar$IndicatorHandle;
.super Lcom/htc/camera/Handle;
.source "CaptureBar.java"


# instance fields
.field public final flags:I

.field public final icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 239
    const-string v0, "Indicator"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 240
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$IndicatorHandle;->icon:Landroid/graphics/drawable/Drawable;

    .line 241
    iput p2, p0, Lcom/htc/camera/component/CaptureBar$IndicatorHandle;->flags:I

    .line 242
    return-void
.end method
