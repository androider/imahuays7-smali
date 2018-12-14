.class public Lme/jessyan/progressmanager/body/ProgressInfo;
.super Ljava/lang/Object;
.source "ProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lme/jessyan/progressmanager/body/ProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Lme/jessyan/progressmanager/body/ProgressInfo$1;

    invoke-direct {v0}, Lme/jessyan/progressmanager/body/ProgressInfo$1;-><init>()V

    sput-object v0, Lme/jessyan/progressmanager/body/ProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->e:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->a:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->b:J

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->c:J

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->d:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->e:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->f:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->b:J

    return-wide v0
.end method

.method a(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->a:J

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->f:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->e:J

    return-wide v0
.end method

.method b(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->b:J

    return-void
.end method

.method c(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->c:J

    return-void
.end method

.method d(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->d:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eachBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", intervalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", finish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 128
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-boolean p2, p0, Lme/jessyan/progressmanager/body/ProgressInfo;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
