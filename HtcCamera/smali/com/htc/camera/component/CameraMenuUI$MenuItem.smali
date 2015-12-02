.class Lcom/htc/camera/component/CameraMenuUI$MenuItem;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mImageView:Landroid/widget/ImageView;

.field public mItemName:Ljava/lang/String;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1771
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    .line 1765
    iput-object p2, p0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1766
    iput-object p3, p0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mDisplayName:Ljava/lang/String;

    .line 1767
    return-void
.end method
