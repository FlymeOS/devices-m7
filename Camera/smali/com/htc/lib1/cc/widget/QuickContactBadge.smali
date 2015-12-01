.class public Lcom/htc/lib1/cc/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;


# instance fields
.field private isAutoMotiveMode:Z

.field private isDarkMode:Z

.field private mCallback:Lcom/htc/lib1/cc/widget/at;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mColorArray:[F

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mGainFocus:Z

.field private mIsAnimating:Z

.field private mMode:I

.field private mOverlayColor:I

.field private mQueryHandler:Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenPaint:Landroid/graphics/Paint;

.field private mSelectorDrawable:Landroid/graphics/drawable/Drawable;

.field private maskDrawableBadgeLight:Landroid/graphics/drawable/Drawable;

.field private secondaryDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/htc/lib1/cc/k;->QuickContactBadgeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 160
    sget v0, Lcom/htc/lib1/cc/k;->QuickContactBadgeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 74
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 77
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mIsAnimating:Z

    .line 78
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 88
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mGainFocus:Z

    .line 89
    iput v4, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mOverlayColor:I

    .line 90
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 122
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    .line 123
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->maskDrawableBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 398
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->isDarkMode:Z

    .line 634
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCallback:Lcom/htc/lib1/cc/widget/at;

    .line 162
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->QuickContactBadge:[I

    sget v1, Lcom/htc/lib1/cc/b;->quickContactBadgeStyle:I

    sget v2, Lcom/htc/lib1/cc/k;->QuickContactBadgeStyle:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->maskDrawableBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mMode:I

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/c;->overlay_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mOverlayColor:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    iget v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mOverlayColor:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mOverlayColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->list_selector_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->init()V

    .line 181
    return-void
.end method

.method static synthetic access$002(Lcom/htc/lib1/cc/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/QuickContactBadge;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method private hasContactInfo()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;-><init>(Lcom/htc/lib1/cc/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

    .line 258
    invoke-virtual {p0, p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    .line 261
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 263
    return-void
.end method

.method private isAssigned()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->setEnabled(Z)V

    .line 499
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 245
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 235
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 237
    invoke-super {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 238
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 239
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 289
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 291
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->invalidate()V

    .line 293
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    .line 515
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, v2, v1, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_1
    return-void

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_3

    .line 520
    const-string v0, "uri_content"

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/lib1/cc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "uri_content"

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/lib1/cc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 301
    .line 302
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 305
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mGainFocus:Z

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 307
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->hasContactInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->maskDrawableBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 317
    :goto_1
    if-eqz v0, :cond_6

    .line 318
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mGainFocus:Z

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 351
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 314
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 334
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mGainFocus:Z

    .line 282
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 283
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 254
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 190
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_3

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 200
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 201
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 0

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    .line 416
    return-void
.end method

.method public setCallback(Lcom/htc/lib1/cc/widget/at;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mCallback:Lcom/htc/lib1/cc/widget/at;

    .line 643
    return-void
.end method

.method public setDefaultOnClickListener(Z)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 272
    invoke-virtual {p0, p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setIconForImageRes(Z)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 738
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 739
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 748
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 369
    iput p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mMode:I

    .line 370
    return-void
.end method

.method protected setQuickContactInActionBar(Z)V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method setScale(F)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->setScaleX(F)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->setScaleY(F)V

    .line 206
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 728
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 729
    return-void
.end method

.method setScreen(F)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 210
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    .line 211
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 213
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 214
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 215
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    const/16 v1, 0x12

    aput p1, v0, v1

    .line 216
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorArray:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 217
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 218
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 220
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->invalidate()V

    .line 222
    :cond_0
    return-void
.end method

.method public setSecondaryImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 689
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->setSecondaryImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    return-void
.end method

.method public setSecondaryImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 680
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->invalidate()V

    .line 681
    return-void
.end method

.method public setSecondaryImageResource(I)V
    .locals 4

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/QuickContactBadge;->invalidate()V

    .line 671
    :cond_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    const-string v1, "QuickContactBadge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/QuickContactBadge;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSelectedContactsAppTabIndex(I)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method
