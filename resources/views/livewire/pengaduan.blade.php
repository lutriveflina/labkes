<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px"
        width="30px">

    <div class="member-detail">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <h2><span>Informasi </span> & Pengaduan</h2>
                        <p>Layanan Aspirasi dan Pengaduan Masyarakat bisa klik icon dibawah ini:</p>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="social-icons">
                    <a href="https://www.email.com/labkesbkt@gmail.com " target="_blank"><img src="email.png"
                            style="width: 50px; height: 50px; object-fit: cover; border-radius: 10px"></a>&nbsp;
                    <a href="https://www.facebook.com/p/UPTD-Laboratorium-Kesehatan-Bukittinggi-100066542015986/?locale=id_ID"
                        target="_blank"><img src="facebook.png"
                            style="width: 50px; height: 50px; object-fit: cover; border-radius: 10px" alt=""></a>&nbsp;
                    <a href="https://www.instagram.com/labkes.bukittinggi" target="_blank"><img src="instagram.png"
                            style="width: 50px; height: 50px; object-fit: cover; border-radius: 10px" alt=""></a>&nbsp;
                    <button style="background-color: #4AD295;"><a
                            href="https://api.whatsapp.com/send?phone=6282384199918&text=Hallo%20Ada%20yang%20Bisa%20Kami%20Bantu"
                            target="_blank"><img src="wa.jpg"
                                style="width: 50px; height: 50px; object-fit: cover; border-radius: 10px"></a></button>
                </div>
            </div>

        </div>
    </div>
    <div class="contact-us">

        <div class="leave-msg dark-back">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            <h2><span>Kritik</span> & <span>Saran</span></h2>
                        </div>
                    </div>
                </div>

                <div class="form">
                    <div class="row">
                        <p class="success" id="success" style="display:none;"></p>
                        <p class="error" id="error" style="display:none;"></p>
                        <form wire:submit.prevent="save" class="complaint-form mx-auto" enctype="multipart/form-data">

                            {{-- <form name="{{ route('dashboard.pengaduan.post') }}" method="POST"
                                enctype="multipart/form-data"></form> --}}
                            @csrf
                            <div class="col-md-4"><input type="text" data-delay="300" placeholder="nama lengkap"
                                    name="name" id="name" wire:model="name" class="input">
                                @error('title')
                                <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="col-md-4"><input type="text" data-delay="300" placeholder="E-mail " name="email"
                                    id="email" wire:model="email" class="input">
                                @error('title')
                                <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="col-md-4"><input type="text" data-delay="300" placeholder="Subject"
                                    name="subject" id="subject" wire:model="subject" class="input">
                                @error('title')
                                <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="col-md-12"><textarea data-delay="500" class="required valid"
                                    placeholder="Message" name="pesan" id="pesan" wire:model="pesan"></textarea>
                                @error('title')
                                <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="col-md-2"><input name="submit" type="submit" value="submit" wire:click="save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
