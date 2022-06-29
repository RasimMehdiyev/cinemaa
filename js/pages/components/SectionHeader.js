class SectionHeader {
  render(title) {
    return `
            <div class="section_header">
                <h2>${title}</h2>
            </div>
            `;
  }
}

export default new SectionHeader();
