.class Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
.super Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
.source "CameraMenuUI.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_ViewPagerMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/component/CameraMenuUI$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/CameraMenuUI;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/component/CameraMenuUI$MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;-><init>()V

    .line 1779
    iput-object p3, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->m_ViewPagerMenuList:Ljava/util/List;

    .line 1780
    iput-object p2, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->mContext:Landroid/content/Context;

    .line 1781
    return-void
.end method


# virtual methods
.method public addItem(ILcom/htc/camera/component/CameraMenuUI$MenuItem;)V
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->m_ViewPagerMenuList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1813
    return-void
.end method

.method public deleteItem(Lcom/htc/camera/component/CameraMenuUI$MenuItem;)V
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->m_ViewPagerMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1809
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1785
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1786
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->m_ViewPagerMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1876
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 1822
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1823
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1824
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$5000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem total count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const/4 v3, 0x0

    .line 1826
    const/4 v2, 0x0

    .line 1828
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v0

    mul-int/lit8 v1, p2, 0x6

    sub-int/2addr v0, v1

    .line 1829
    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    const/4 v0, 0x6

    move v1, v0

    .line 1830
    :goto_0
    const/4 v0, 0x0

    move v4, v2

    move v2, v3

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_5

    .line 1832
    mul-int/lit8 v0, p2, 0x6

    add-int v6, v0, v3

    .line 1833
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f03005c

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1834
    new-instance v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    invoke-direct {v8}, Lcom/htc/camera/component/CameraMenuUI$MenuItem;-><init>()V

    .line 1835
    const v0, 0x7f0e0150

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mImageView:Landroid/widget/ImageView;

    .line 1836
    const v0, 0x7f0e0151

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mTextView:Landroid/widget/TextView;

    .line 1837
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$5100(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "instantiateItem pos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    invoke-virtual {p0, v6}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    iput-object v0, v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    .line 1840
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {p0, v6}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 1841
    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_Shape:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/htc/camera/component/CameraMenuUI;->access$5200(Lcom/htc/camera/component/CameraMenuUI;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1842
    iget-object v9, v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mImageView:Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1843
    iget-object v9, v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1845
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v10, 0x7f0a04b3

    invoke-virtual {v9, v10}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v9

    iget-object v10, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v11, 0x7f0a04b4

    invoke-virtual {v10, v11}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v10

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1846
    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v10, 0x7f0a04b3

    invoke-virtual {v9, v10}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v9

    mul-int/2addr v9, v4

    iget-object v10, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v11, 0x7f0a04b5

    invoke-virtual {v10, v11}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1847
    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v10, 0x7f0a04b4

    invoke-virtual {v9, v10}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v9

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v11, 0x7f0a04b6

    invoke-virtual {v10, v11}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v10

    mul-int/2addr v10, v2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v11, 0x7f0a04b6

    invoke-virtual {v10, v11}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1848
    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/camera/component/CameraMenuUI;->access$3500(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_0

    .line 1849
    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1850
    :cond_0
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1852
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v9, 0x3

    const v10, 0x7f0e0150

    invoke-virtual {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1854
    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const v10, 0x7f0a04a5

    invoke-virtual {v9, v10}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v9

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1855
    iget-object v8, v8, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1856
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1300(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$DragState;

    move-result-object v0

    sget-object v6, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_DELETE:Lcom/htc/camera/component/CameraMenuUI$DragState;

    if-eq v0, v6, :cond_1

    .line 1857
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    :cond_1
    iget-object v6, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 1859
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1861
    add-int/lit8 v0, v4, 0x1

    .line 1862
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 1864
    add-int/lit8 v2, v2, 0x1

    .line 1865
    const/4 v0, 0x0

    .line 1830
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_3
    move v1, v0

    .line 1829
    goto/16 :goto_0

    .line 1858
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_LockRotation:Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$900(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    goto :goto_2

    .line 1868
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->createBackground(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$5300(Lcom/htc/camera/component/CameraMenuUI;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1870
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1871
    return-object v5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1791
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->m_ViewPagerMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateMenuList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/component/CameraMenuUI$MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->m_ViewPagerMenuList:Ljava/util/List;

    .line 1818
    return-void
.end method
