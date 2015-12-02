.class public Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;
.super Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;
.source "ReminderPanel.java"


# instance fields
.field private mButtonSize:I

.field private mButtonSphereLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderSphere;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflated:Z

.field private mMiddleGapVisibility:I

.field private mOriginalPaddingBottom:I

.field private mOriginalPaddingLeft:I

.field private mOriginalPaddingRight:I

.field private mOriginalPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mButtonSize:I

    .line 26
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mInflated:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mButtonSphereLists:Ljava/util/List;

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mMiddleGapVisibility:I

    .line 41
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mButtonSize:I

    .line 26
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mInflated:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mButtonSphereLists:Ljava/util/List;

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mMiddleGapVisibility:I

    .line 46
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mButtonSize:I

    .line 26
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mInflated:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mButtonSphereLists:Ljava/util/List;

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mMiddleGapVisibility:I

    .line 51
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->init()V

    .line 52
    return-void
.end method

.method private getLayoutPadding()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mOriginalPaddingBottom:I

    .line 63
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mOriginalPaddingTop:I

    .line 64
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mOriginalPaddingLeft:I

    .line 65
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mOriginalPaddingRight:I

    .line 66
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->init()V

    .line 57
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/ReminderPanel;->getLayoutPadding()V

    .line 59
    return-void
.end method
