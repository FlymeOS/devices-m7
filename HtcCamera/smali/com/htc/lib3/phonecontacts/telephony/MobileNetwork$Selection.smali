.class public Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public phoneType:Ljava/lang/Integer;

.field public slot:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/c;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/c;-><init>()V

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    instance-of v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    iget-object v0, v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 71
    check-cast p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    instance-of v0, p1, Landroid/os/Parcel;

    if-eqz v0, :cond_2

    .line 74
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    goto :goto_0

    .line 78
    :cond_2
    :try_start_0
    const-string v0, "slot"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_1
    :try_start_1
    const-string v0, "phoneType"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static constructFromString(Ljava/lang/String;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;
    .locals 2

    .prologue
    .line 170
    .line 171
    if-eqz p0, :cond_1

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    invoke-direct {p1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;-><init>()V

    .line 175
    :cond_0
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :goto_0
    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_1
    :goto_1
    return-object p1

    .line 181
    :catch_0
    move-exception v0

    goto :goto_1

    .line 178
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static fillIntoString(Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    if-eqz p0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method
